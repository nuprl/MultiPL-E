aws configure sso
export AWS_REGION=ap-northeast-1
export AWS_PROFILE=288761745376_developer
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export REPO=multipl-e-api-lambda
export TAG=v1
export IMAGE="$ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$REPO:$TAG"
export DOCKER_CLI_PLUGIN_EXTRA_DIRS=/usr/libexec/docker/cli-plugins
export ROLE_NAME=lambda-eval-exec-role
export FUNCTION_NAME=eval-fastapi-v2
export ARCHITECTURE=x86_64
export FUNC_URL=$(aws lambda get-function-url-config --function-name "$FUNCTION_NAME" --region "$AWS_REGION" --profile "$PROFILE" --query FunctionUrl --output text)
export PROFILE=288761745376_developer
aws ecr get-login-password --region "$AWS_REGION" --profile "$PROFILE"   | docker login --username AWS --password-stdin "$ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com"
# docker buildx build --platform linux/amd64 -t "$IMAGE" --progress=plain --push .
# DIGEST=$(aws ecr describe-images \
#   --repository-name "$REPO" \
#   --image-ids imageTag="$TAG" \
#   --region "$AWS_REGION" --profile "$PROFILE" \
#   --query 'imageDetails[0].imageDigest' --output text)
# export IMAGE_URI="$ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$REPO@$DIGEST"
# aws lambda update-function-code --function-name "$FUNCTION_NAME" --image-uri "$ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$REPO@$DIGEST" --region "$AWS_REGION" --profile "$PROFILE"
# aws lambda wait function-updated --function-name "$FUNCTION_NAME" --region "$AWS_REGION" --profile "$PROFILE"
# aws lambda get-function --function-name "$FUNCTION_NAME" --region "$AWS_REGION" --profile "$PROFILE" --query 'Code.ImageUri'
# aws lambda get-function-configuration --function-name "$FUNCTION_NAME" --region "$AWS_REGION" --profile "$PROFILE" --query '{State:State,LastUpdateStatus:LastUpdateStatus,ImageUri:ImageUri}'
# curl -sS "$FUNC_URL/healthz"