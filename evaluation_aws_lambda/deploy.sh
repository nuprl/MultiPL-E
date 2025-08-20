#!/usr/bin/env bash

# If the script is sourced, re-exec in a subshell to avoid
# exporting set -euo pipefail and traps to the caller shell.
if [[ "${BASH_SOURCE[0]}" != "$0" ]]; then
  echo "[INFO] This script is being sourced; re-executing safely..."
  bash "${BASH_SOURCE[0]}" "$@"
  return $?
fi

# Deploy all language-specific Lambda container images and print their URLs.
# - Builds and pushes a shared base image
# - Builds and pushes each language image (FROM the base)
# - Updates corresponding Lambda functions
# - Ensures/prints Function URLs for each language

set -euo pipefail
set -o errtrace

# --------------------------- Logging setup ---------------------------
# Script directory and logs directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_DIR="$SCRIPT_DIR/logs"
mkdir -p "$LOG_DIR"

START_TS="$(date +%Y-%m-%d_%H-%M-%S)"
LOG_FILE="$LOG_DIR/deploy_${START_TS}.log"

# Improve xtrace with timestamps, file, and line numbers
export PS4='+ [$(date +"%Y-%m-%d %H:%M:%S")] ${BASH_SOURCE[0]:-${0##*/}}:${LINENO}: '
set -x

# Send all stdout/stderr to both console and log file
exec > >(tee -a "$LOG_FILE") 2>&1

# Maintain a convenient symlink to the most recent log
ln -sfn "$LOG_FILE" "$LOG_DIR/latest.log"

on_exit() {
  local code=$?
  echo "[INFO] Exiting with status: $code at $(date +"%Y-%m-%d %H:%M:%S")"
  echo "[INFO] Full log: $LOG_FILE"
}
trap on_exit EXIT

on_err() {
  local code=$?
  # BASH_COMMAND is the command that failed inside ERR trap
  echo "[ERROR] Command failed (exit=$code): $BASH_COMMAND"
}
trap on_err ERR

# --------------------------- Config (override as needed) ---------------------------
: "${AWS_REGION:=ap-northeast-1}"
: "${PROFILE:=288761745376_developer}"
: "${REPO:=multipl-e-api-lambda}"            # Single ECR repo; images are tagged per-language
: "${TAG:=v1}"                               # Version tag suffix used for all languages
: "${FUNCTION_PREFIX:=eval-fastapi-v2}"      # Lambda function name prefix; function is ${FUNCTION_PREFIX}-${lang}
: "${ARCHITECTURE:=x86_64}"
: "${DOCKER_EXEC:=docker}"                   # or podman if preferred
# Lambda defaults for auto-creation (can override via env)
: "${FUNCTION_MEMORY_MB:=10240}"
: "${FUNCTION_TIMEOUT_SEC:=900}"
# If ROLE_ARN is not provided, ROLE_NAME will be used to build it
: "${ROLE_NAME:=lambda-eval-exec-role}"

# The set of languages to deploy. Default: all subdirs in lang/ that contain a Dockerfile.
if [[ $# -gt 0 ]]; then
  LANGS=("$@")
else
  mapfile -t LANGS < <(find lang -maxdepth 1 -type d -printf "%f\n" | sort)
  # Keep only those with a Dockerfile inside
  LANGS=("${LANGS[@]}")
  TMP_LANGS=()
  for l in "${LANGS[@]}"; do
    [[ -f "lang/$l/Dockerfile" ]] && TMP_LANGS+=("$l")
  done
  LANGS=("${TMP_LANGS[@]}")
fi

echo "[INFO] ===== Deployment started at $(date +"%Y-%m-%d %H:%M:%S") ====="
echo "[INFO] Log file: $LOG_FILE"
echo "[INFO] Config: AWS_REGION=$AWS_REGION PROFILE=$PROFILE REPO=$REPO TAG=$TAG FUNCTION_PREFIX=$FUNCTION_PREFIX ARCHITECTURE=$ARCHITECTURE DOCKER_EXEC=$DOCKER_EXEC"
echo "[INFO] Detected languages: ${LANGS[*]:-<none>}"
echo "[INFO] Versions:"
aws --version || true
"$DOCKER_EXEC" --version || true
git rev-parse --short HEAD 2>/dev/null | xargs -I{} echo "git-sha: {}" || true

# Avoid any AWS CLI pagers interfering with logging
export AWS_PAGER=""

export AWS_PROFILE="$PROFILE"
ACCOUNT_ID_OUTPUT=""
ACCOUNT_ID=""
# Proactively check AWS credentials and give a clear hint for SSO expiry
if ! ACCOUNT_ID_OUTPUT=$(aws sts get-caller-identity \
  --query Account --output text \
  --region "$AWS_REGION" --profile "$PROFILE" 2>&1); then
  if echo "$ACCOUNT_ID_OUTPUT" | grep -qi 'sso'; then
    echo "[ERROR] AWS SSO token appears expired or missing for profile '$PROFILE'." >&2
    echo "        Please run: aws sso login --profile '$PROFILE'" >&2
  else
    echo "[ERROR] Failed to get AWS account ID: $ACCOUNT_ID_OUTPUT" >&2
  fi
  exit 1
fi
ACCOUNT_ID="$ACCOUNT_ID_OUTPUT"
ECR_BASE="$ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$REPO"

# Resolve ROLE_ARN if not explicitly provided
if [[ -z "${ROLE_ARN:-}" ]]; then
  ROLE_ARN="arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME"
fi

# Make sure buildx is available (for multi-arch push)
export DOCKER_CLI_PLUGIN_EXTRA_DIRS=${DOCKER_CLI_PLUGIN_EXTRA_DIRS:-/usr/libexec/docker/cli-plugins}

echo "Logging in to ECR: $ECR_BASE"
aws ecr get-login-password --region "$AWS_REGION" --profile "$PROFILE" | $DOCKER_EXEC login --username AWS --password-stdin "$ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com"

# --------------------------- Build & push base image ---------------------------
BASE_TAG="base-${TAG}"
BASE_IMAGE_URI="$ECR_BASE:$BASE_TAG"
echo "Building and pushing base image: $BASE_IMAGE_URI"
$DOCKER_EXEC buildx build \
  --platform linux/amd64 \
  -f Dockerfile \
  -t "$BASE_IMAGE_URI" \
  --push \
  .

# --------------------------- Deploy per-language images ---------------------------
declare -A URLS

for lang in "${LANGS[@]}"; do
  DOCKERFILE_PATH="lang/${lang}/Dockerfile"
  [[ -f "$DOCKERFILE_PATH" ]] || { echo "Skip $lang: no Dockerfile"; continue; }

  IMAGE_TAG="${lang}-${TAG}"
  IMAGE_URI="$ECR_BASE:$IMAGE_TAG"
  FUNC_NAME="${FUNCTION_PREFIX}-${lang}"

  echo "\n=== Building $lang image: $IMAGE_URI (FROM $BASE_IMAGE_URI) ==="
  $DOCKER_EXEC buildx build \
    --platform linux/amd64 \
    -f "$DOCKERFILE_PATH" \
    --build-arg BASE_IMAGE="$BASE_IMAGE_URI" \
    -t "$IMAGE_URI" \
    --push \
    .

  echo "Resolving image digest for $IMAGE_URI"
  DIGEST=$(aws ecr describe-images \
    --repository-name "$REPO" \
    --image-ids imageTag="$IMAGE_TAG" \
    --region "$AWS_REGION" --profile "$PROFILE" \
    --query 'imageDetails[0].imageDigest' --output text)

  IMAGE_URI_WITH_DIGEST="$ECR_BASE@$DIGEST"
  if ! aws lambda get-function --function-name "$FUNC_NAME" --region "$AWS_REGION" --profile "$PROFILE" >/dev/null 2>&1; then
    echo "[INFO] Function $FUNC_NAME not found. Creating with image: $IMAGE_URI_WITH_DIGEST"
    aws lambda create-function \
      --function-name "$FUNC_NAME" \
      --package-type Image \
      --code ImageUri="$IMAGE_URI_WITH_DIGEST" \
      --role "$ROLE_ARN" \
      --architectures "$ARCHITECTURE" \
      --timeout "$FUNCTION_TIMEOUT_SEC" \
      --memory-size "$FUNCTION_MEMORY_MB" \
      --region "$AWS_REGION" --profile "$PROFILE" >/dev/null

    echo "Waiting for function creation to become active: $FUNC_NAME"
    aws lambda wait function-active --function-name "$FUNC_NAME" --region "$AWS_REGION" --profile "$PROFILE"
  else
    echo "Updating Lambda function ${FUNC_NAME} to $IMAGE_URI_WITH_DIGEST"
    aws lambda update-function-code \
      --function-name "$FUNC_NAME" \
      --image-uri "$IMAGE_URI_WITH_DIGEST" \
      --region "$AWS_REGION" --profile "$PROFILE" >/dev/null

    echo "Waiting for function update to complete: $FUNC_NAME"
    aws lambda wait function-updated --function-name "$FUNC_NAME" --region "$AWS_REGION" --profile "$PROFILE"
  fi

  # Ensure Function URL exists (public, no auth). If missing, create and open permissions.
  echo "Ensuring Function URL for: $FUNC_NAME"
  FUNC_URL=""
  if FUNC_URL=$(aws lambda get-function-url-config --function-name "$FUNC_NAME" --region "$AWS_REGION" --profile "$PROFILE" --query FunctionUrl --output text 2>/dev/null); then
    :
  else
    echo "Creating Function URL for $FUNC_NAME (auth: NONE)"
    FUNC_URL=$(aws lambda create-function-url-config \
      --function-name "$FUNC_NAME" \
      --auth-type NONE \
      --region "$AWS_REGION" --profile "$PROFILE" \
      --query FunctionUrl --output text)
    # Allow public invoke via Function URL (unique statement-id per lang)
    aws lambda add-permission \
      --function-name "$FUNC_NAME" \
      --action lambda:InvokeFunctionUrl \
      --statement-id "FunctionURLAllowPublicAccess-${lang}" \
      --principal '*' \
      --function-url-auth-type NONE \
      --region "$AWS_REGION" --profile "$PROFILE" >/dev/null || true
  fi

  URLS["$lang"]="$FUNC_URL"
  echo "Function URL ($lang): $FUNC_URL"
done

# Turn off tracing before finishing to avoid leaking PS4/xtrace
set +x

echo "\n================ Deployment Summary ================"
for lang in "${!URLS[@]}"; do
  printf "%-10s %s\n" "$lang" "${URLS[$lang]}"
done
echo "==================================================\n"
