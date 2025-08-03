#!/usr/bin/env bash

echo SHELL="$SHELL"

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2024 Michael Soegtrop
# (C) 2020 Enrico Tassi

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Notify Coq Platform Maintainers ######################

# This script interactively creates upstream issues to notify Coq Platform
# package maintainers about the status of their package in Coq Platform.

##### Initialization #####

set -o nounset
set -o errexit

SCRIPT_PATH="$(dirname "$0")"
ROOT_PATH="$(dirname "${SCRIPT_PATH}")"

##### Parameters #####

# $1: Path of Coq Platform package list file
# Note: this script will make a copy of the package list with
# commented out packages commented in!
PACKAGE_LIST_FILE="$1"

# $2: Optional package name regexp
PACKAGE_FILTER_RE="${2:-.}"

########## Settings ##########

# Extension and release date of the Coq release
EXT_RELEASE=".0"
DATE_RELEASE="September 3rd, 2024"
# Extension and release date of the Coq release, in case the above is a beta
EXT_FINAL=""
DATE_FINAL=""
# Coq Platform release code and dates
VERSION_PLATFORM="2025.01"
DATE_PLATFORM_BETA="Dec 8th, 2024"
DATE_PLATFORM_NOTIFY="Dec 31st, 2024"
DATE_PLATFORM_EXPECTED="Jan 31st, 2025"
DATE_PLATFORM_LATEST="Feb 28th, 2025"
PLATFORM_MAIN_BRANCH="https://github.com/coq/platform/tree/main"

CC="CC: https://github.com/coq/platform/issues/449"
#CC="\n@coqbot column:...."

COQ_PLATFORM_UNIMATH=Y

########## Files ##########

PROCESSED_LIST_FILE="${SCRIPT_PATH}/packages_already_processed.txt"
PATCHED_PACKAGE_LIST_FILE="${SCRIPT_PATH}/PATCHED_PACKAGE_LIST_FILE.sh"

########## Coq CI interface functions ##########

# This function accepts an opam package name as $1 and results in a Coq CI package name

function coq_ci_translate_package_name() {
  package_ci=''
  case "$1" in
    coq)                           ;;
    coqide)                        ;;
    coq-mathcomp-ssreflect)        package_ci='mathcomp' ;; 
    coq-mathcomp-fingroup.1.12.0)  ;;
    coq-mathcomp-algebra.1.12.0)   ;;
    coq-mathcomp-solvable.1.12.0)  ;;
    coq-mathcomp-field.1.12.0)     ;;
    coq-mathcomp-character.1.12.0) ;;
    coq-*)                         package_ci="${package_main#coq-}" ;;
    *)                             ;;
  esac
  echo "${package_ci//-/_}"
}

# get the GIT repo name from a ci-basic-overlay.sh file
# $1 is the Coq CI package name
function coq_ci_get_repo_name() {
  grep "project  *$1" "${CI_PACKAGE_LIST}" | cut -d ' ' -f 3 | tr -d "'\"" || true
}

# get the GIT tag/hash/branch name from a ci-basic-overlay.sh file
# $1 is the Coq CI package name
function coq_ci_get_ref() {
  grep "project  *$1" "${CI_PACKAGE_LIST}" | cut -d ' ' -f 4 | tr -d "'\"" || true
}

########## opam interface functions ##########

# Get installation status of package (true/false)

function opam_is_installed() {
  [ "$(opam var "$1":installed)" == "true" ]
}

# Get installed version of package $1
# Only to be used if package is installed!

function opam_get_installed_version() {
  opam var "$1":version
}

# Get opam package repo of package $1
# Only to be used if package is installed!

function opam_get_installed_opam_repo() {
  repo=$(opam show -f repository "$1")
  case $repo in
    default)             echo 'official repository https://opam.ocaml.org' ;;
    coq-core-dev)        echo 'official repository https://coq.inria.fr/opam/core-dev' ;;
    coq-extra-dev)       echo 'official repository https://coq.inria.fr/opam/extra-dev' ;;
    coq-released)        echo 'official repository https://coq.inria.fr/opam/released' ;;
    *patch_coq-dev)      echo 'platform patch repository https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev' ;;
    *patch_coq-released) echo 'platform patch repository https://github.com/coq/platform/tree/main/opam/opam-coq-archive/released' ;;
    *patch_ocaml)        echo 'platform patch repository https://github.com/coq/platform/tree/main/opam/opam-repository' ;;
    *)                   echo 'unknown repository' ;;
  esac
}

# Get opam package repo hint of package $1
# Only to be used if package is installed!

function opam_get_installed_opam_repo_hint() {
  repo=$(opam show -f repository "$1")
  case $repo in
    default)             echo '' ;;
    coq-core-dev)        echo '' ;;
    coq-extra-dev)       echo '' ;;
    coq-released)        echo '' ;;
    *patch_coq-dev)      echo ' **This means we had to do some severe patching of the opam package - e.g. pin it to a non release commit.**' ;;
    *patch_coq-released) echo ' **This means we had to weaken some version restrictions in the opam package, but no other changes were required.**' ;;
    *patch_ocaml)        echo ' **This means we had to do some severe patching of the opam package - e.g. pin it to a non release commit.**' ;;
    *)                   echo '' ;;
  esac
}

# Get opam package repo status
# Only to be used if package is installed!

function opam_is_heavily_patched() {
  repo=$(opam show -f repository "$1")
  case $repo in
    *patch_coq-dev)      return 0 ;;
    *patch_ocaml)        return 0 ;;
    *)                   return 1 ;;
  esac
}
# Get issue reporting URL for package $1

function opam_get_issue_url() {
  opam show -f bug-reports "$1" | tr -d '"'
}

########## User interaction ##########

# Ask user for confirmation multi option + cancel question
# $1 message
# $2 set of options as character sequence
# The choice is stored in ${ANSWER}

function ask_user {
  while true; do
    read -p "$1 (${2}/c=cancel) " ANSWER
    case "$ANSWER" in
        [cC]) return 1 ;;
        [$2]) return 0 ;;
        *) echo "Please answer one of '${2}' or 'c'=cancel/exit!";;
    esac
  done
}

########## Issue creation functions ##########

# open a "please tag" issue
# $1 = repo url
# This function used various environment variables to fill in details

function open_issue_tag() {
  TITLE="Please create a tag for Coq ${COQ_PLATFORM_COQ_BASE_VERSION} in Coq Platform ${VERSION_PLATFORM}"
  BODY="The Coq team released Coq "'`'"${COQ_PLATFORM_COQ_BASE_VERSION}${EXT_RELEASE}"'`'" on ${DATE_RELEASE}${DATE_FINAL:+ and plans to release Coq ${COQ_PLATFORM_COQ_BASE_VERSION}${EXT_FINAL} around ${DATE_FINAL}}.
The corresponding Coq Platform release "'`'"${VERSION_PLATFORM}"'`'" should be released before **${DATE_PLATFORM_EXPECTED}**.
It can be delayed in case of difficulties until ${DATE_PLATFORM_LATEST}, but this should be an exception.

This issue is to inform you that to our (possibly a few days old) best knowledge the latest released version of your project (${LATEST_OPAM_VERSION}) **does not work** with Coq "'`'"${COQ_PLATFORM_COQ_BASE_VERSION}${EXT_RELEASE}"'`'".
We tried to remove version restrictions in opam files and possibly make or configure files, but this did not suffice.

Please note that in Coq Platform CI (unlike Coq CI) we test only released / tagged versions. ${COQ_CI_TEST_INFO}

Could you please create a tag and opam package, or communicate us any existing tag that works with Coq branch ${COQ_PLATFORM_COQ_BRANCH}, **preferably before ${DATE_PLATFORM_NOTIFY}**?
In case we might have to delay the Coq Platform release cause of issues with your project, we would prefer to be informed about the situation as early as possible.

In case the tag and opam package are available before ${DATE_PLATFORM_BETA}, it will be included in an early Coq Platform beta release of the for Coq ${COQ_PLATFORM_COQ_BASE_VERSION}${EXT_RELEASE}.

The working branch of Coq Platform, can be found here [main](${PLATFORM_MAIN_BRANCH}).
It contains package pick ["'`'"${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}"'`'"](${PLATFORM_MAIN_BRANCH}/package_picks/${PACKAGE_LIST_FILE##*/}) which already supports Coq version "'`'"${COQ_PLATFORM_COQ_BASE_VERSION}${EXT_RELEASE}"'`'" and contains already working (possibly patched / commit pinned) Coq Platform packages.

Please **don't** close this issue, even after creating the new tag and/or opam package.
We will close the issue after updating Coq Platform.
This is a measure of 'double book keeping' in order to avoid that we ship the wrong version.

In any case, Coq Platform won't be released before this issue is closed!

Thanks!

P.S.: this issue has been created automatically based on CI status.

$CC
"
  open_issue "$1" "${TITLE}" "${BODY}"
}

# open a "please select version" issue
# $1 = repo url
# This function used various environment variables to fill in details

function open_issue_inform() {
  TITLE="Please pick the version you prefer for Coq ${COQ_PLATFORM_COQ_BASE_VERSION} in Coq Platform ${VERSION_PLATFORM}"
  BODY="The Coq team released Coq "'`'"${COQ_PLATFORM_COQ_BASE_VERSION}${EXT_RELEASE}"'`'" on ${DATE_RELEASE}${DATE_FINAL:+ and plans to release Coq ${COQ_PLATFORM_COQ_BASE_VERSION}${EXT_FINAL} around ${DATE_FINAL}}.
The corresponding Coq Platform release "'`'"${VERSION_PLATFORM}"'`'" should be released before **${DATE_PLATFORM_EXPECTED}**.
It can be delayed in case of difficulties until ${DATE_PLATFORM_LATEST}, but this should be an exception.

This issue is to inform you that the opam package we are currently testing in Coq Platform CI **works fine** with Coq "'`'"${COQ_PLATFORM_COQ_BASE_VERSION}${EXT_RELEASE}"'`'".

${COQ_PLATFORM_TEST_INFO}

**In case this is the version you want to see in Coq Platform, there is nothing to do for you - please just close this issue.**

In case you would prefer to see an updated or an older version in the upcoming Coq Platform "'`'"${VERSION_PLATFORM}"'`'", please inform us as soon as possible and before **${DATE_PLATFORM_NOTIFY}**!

The working branch of Coq Platform, can be found here [main](${PLATFORM_MAIN_BRANCH}).
It contains package pick ["'`'"${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}"'`'"](${PLATFORM_MAIN_BRANCH}/package_picks/${PACKAGE_LIST_FILE##*/}) which already supports Coq version "'`'"${COQ_PLATFORM_COQ_BASE_VERSION}${EXT_RELEASE}"'`'" and contains already working (possibly patched / commit pinned) Coq Platform packages.

In case you want to select a different version, please **don't** close this issue, even after creating the new tag and/or opam package.
We will close the issue after updating Coq Platform.
This is a measure of 'double book keeping' in order to avoid that we ship the wrong version.

In any case, Coq Platform won't be released before this issue is closed!

Thanks!

P.S.: this issue has been created automatically based on CI status.

$CC
"
  open_issue "$1" "${TITLE}" "${BODY}"
}

# open an issue
# $1 = repo url
# $2 = title
# $3 = body

function open_issue() {
  UUTITLE=$(urlencode "$2")
  UUBODY=$(urlencode "$3")

  case $1 in
  ( http*github.com* )
    open_url "$1/new?title=$UUTITLE&body=$UUBODY"
    ;;
  ( http* )
    open_url "$1"
    echo
    echo -e "$TITLE"
    echo
    echo -e "$BODY"
    ;;
  ( * )
    echo -e "$1"
    echo
    echo -e "$TITLE"
    echo
    echo -e "$BODY"
    ;;
  esac
} 

# https://gist.github.com/cdown/1163649
function urlencode() {
    # urlencode <string>

    old_lc_collate=${LC_COLLATE:-}
    LC_COLLATE=C

    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:$i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf '%s' "$c" ;;
            *) printf '%%%02X' "'$c" ;;
        esac
    done
    if [ -n "${old_lc_collate}" ]
    then
      LC_COLLATE=$old_lc_collate
    fi
}

# Open an url in the user's default app
# $1 = URL to open

function open_url {
  case "$OSTYPE" in
    linux*)  xdg-open "$1" ;;
    darwin*) open "$1" ;;
    cygwin*) echo "TODO: unimplemented" ; return 1 ;;
    *)       echo "ERROR: unsupported OS type '$OSTYPE'"; return 1 ;;
  esac
}

########## Package list handling ##########

# Make Copy of package list file with all packages enabled

sed -e 's/#.*PACKAGES=/PACKAGES=/' ${PACKAGE_LIST_FILE} > ${PATCHED_PACKAGE_LIST_FILE}

# Read package list file

COQ_PLATFORM_EXTENT=x
COQ_PLATFORM_COMPCERT=y
COQ_PLATFORM_VST=y
COQ_PLATFORM_FIATCRYPTO=y
BITSIZE=64

source ${PATCHED_PACKAGE_LIST_FILE}
source ${ROOT_PATH}/package_picks/coq_platform_release.sh

COQ_PLATFORM_COQ_BASE_VERSION=${COQ_PLATFORM_COQ_BRANCH#v}

set | grep '^COQ_PLATFORM'
echo PACKAGES                      = "${PACKAGES}"


########## Coq CI handling ##########

CI_PACKAGE_LIST=${SCRIPT_PATH}/ci_package_list.sh

# Get ci-basic-overlay.sh file from the branch corresponding to the version
wget -nv https://raw.githubusercontent.com/coq/coq/${COQ_PLATFORM_COQ_BRANCH}/dev/ci/ci-basic-overlay.sh -O "${CI_PACKAGE_LIST}"

declare -a projects
export projects

########## Main loop over packages ##########

PACKAGES_PROCESSED="$(cat "${PROCESSED_LIST_FILE}" || true)"

for package in ${PACKAGES}
do
  package_main="${package%%.*}"

  # General package filter
  case ${package_main} in
    coq-*)   ;;
    gappa*)  ;;
    elpi*)   ;;
    *)       continue ;;
  esac

  # User (command line) package filter
  if [[ ! "${package_main}" =~ ${PACKAGE_FILTER_RE} ]]; then continue; fi

  # Already processed filter
  if [[ ' '"${PACKAGES_PROCESSED}"' ' =~ [[:space:]]+"${package_main}"[[:space:]]+ ]]; then continue; fi

  echo -e "\n==================== PROCESSING $package_main ===================="

  # Get package status in opam
  package_opam_issue_url="$(opam_get_issue_url  ${package_main})"
  if opam_is_installed "${package_main}"
  then
    package_opam_version="$(opam_get_installed_version ${package_main})"
    package_opam_repo="$(opam_get_installed_opam_repo  ${package_main})"
    package_opam_repo_hint="$(opam_get_installed_opam_repo_hint  ${package_main})"
    echo "OPAM installed:   ${package_opam_version}  (${package_opam_repo})"
    echo "OPAM issue url    ${package_opam_issue_url}"
    COQ_PLATFORM_TEST_INFO="Coq Platform CI is currently testing opam package \`${package_main}.${package_opam_version}\`"$'\n'"from ${package_opam_repo}/packages/${package_main}/${package}/opam. ${package_opam_repo_hint}"
    if opam_is_heavily_patched "${package_main}"
    then
      PLATFORM_CI_OK=N
    else
      PLATFORM_CI_OK=Y
    fi
  else
    echo "OPAM:             NOT INSTALLED"
    echo "OPAM issue url    ${package_opam_issue_url}"
    COQ_PLATFORM_TEST_INFO="Coq Platform CI is currently **not testing** this project - which means we couldn't bring the latest tag or opam package to work with trivial patches like removing coq version restrictions."
    PLATFORM_CI_OK=N
  fi

  # Get package status in Coq CI
  package_ci="$(coq_ci_translate_package_name "${package_main}")"
  if [ -z "${package_ci}" ]
  then
    echo "Coq CI:           NOT IN COQ CI"
    COQ_CI_TEST_INFO="Btw.: Coq CI apparently does not test this project."
  else
    package_ci_repo="$(coq_ci_get_repo_name "${package_ci}")"
    package_ci_ref="$(coq_ci_get_ref "${package_ci}")"
    if [ -z "${package_ci_ref}" ]
    then
      echo "Coq CI:           SPECIAL HANDLING"
      COQ_CI_TEST_INFO="Coq CI appears to test this project, but has some special handling for your project which makes it difficult to retrieve the commit it tests for your project."
    else
      echo "Coq CI repo:      ${package_ci_repo}"
      echo "Coq CI ref:       ${package_ci_ref}"
      COQ_CI_TEST_INFO="Coq CI is currently testing commit ${package_ci_ref} on repository ${package_ci_repo} - which likely means that this commit does work in Coq CI."
    fi
  fi

  # Show available versions in opam
  opam_versions="$(opam show -f all-versions ${package_main})"
  LATEST_OPAM_VERSION="$(echo "${opam_versions}" | sed 's/  */\n/g' | grep -v 'dev' | tail -n 1)"
  echo "OPAM versions:    ${opam_versions} [${LATEST_OPAM_VERSION}]"

  # Show available versions in git
  package_dev_repo_url="$(opam show "${package_main}" -f dev-repo | sed -e 's/"//g')"
  if [[ "${package_dev_repo_url}" =~ ^git\+ ]]
  then
    package_git_repo="${package_dev_repo_url#git+}"
    echo "GIT tag-versions: $(git -c 'versionsort.suffix=-' ls-remote --refs --tags "${package_git_repo}" | sed -e 's|.*refs/tags/||' -e 's/^[-_a-zA-Z]*//' | sort --version-sort | tr '\n' ' ' | sed 's/ /  /g')"
  else
    echo "GIT:              NO GIT URL!"
  fi

  # Create issue
  if [ "${PLATFORM_CI_OK}" == "Y" ]
  then
    ask_user "Create an information issue?" "yn"
    if [ "${ANSWER}" == y ]; then open_issue_inform "${package_opam_issue_url}"; fi
  else
    ask_user "Create a 'please tag' issue?" "yn"
    if [ "${ANSWER}" == y ]; then open_issue_tag "${package_opam_issue_url}"; fi
  fi

  echo "${package_main}" >> "${PROCESSED_LIST_FILE}"
done
