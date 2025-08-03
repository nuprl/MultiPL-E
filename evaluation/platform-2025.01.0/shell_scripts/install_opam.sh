#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### INSTALL OPAM #####################

function run_opam_installer {
  check_command_available curl
  curl -sL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh > opam_installer.sh
  chmod a+x opam_installer.sh
  if [[ "${COQREGTESTING:-n}" == y ]]
  then
    sudo sh -c 'yes "" | ./opam_installer.sh'
  else
    ./opam_installer.sh
  fi
  rm opam_installer.sh
}

# Register a Coq Platform specific patch repo
# This repo shall always be specific to this switch - if it exists, the URL will be set to the require value
# $1 - patch repo subfolder (a subfolder under opam)
# $2 - patch repo name (a postfix to the repo name)
function create_opam_repo {
  if ! opam repo set-url "${COQ_PLATFORM_REPO_NAME}.patch_$2" "file://$OPAMPACKAGES/$1" 2>/dev/null
  then
    $COQ_PLATFORM_TIME opam repo add --dont-select "${COQ_PLATFORM_REPO_NAME}.patch_$2" "file://$OPAMPACKAGES/$1"
  fi
}

if ! command -v opam &> /dev/null
then
  echo "===== INSTALLING OPAM ====="
  if [[ "$OSTYPE" == linux* ]]
  then
    # On Linux use the opam install script - Linux has too many variants.
    run_opam_installer
  elif [[ "$OSTYPE" == darwin* ]]
  then
    # On macOS if a package manager is installed, use it - otherwise use the opam install script.
    # The advantage of using a package manager is that opam is updated automatically.
    if command -v port &> /dev/null
    then
      sudo port install opam
    elif command -v brew &> /dev/null
    then
      brew install opam
    else
      run_opam_installer
    fi
  elif [[ "$OSTYPE" == cygwin ]]
  then
    # We want MinGW cross - this requires a special opam
    wget https://github.com/fdopen/opam-repository-mingw/releases/download/0.0.0.2/opam$BITSIZE.tar.xz -O "opam$BITSIZE.tar.xz"
    tar -xf "opam$BITSIZE.tar.xz"
    bash opam$BITSIZE/install.sh --prefix "/usr/$(uname -m)-w64-mingw32/sys-root/mingw"
  else
      echo "ERROR: unsopported OS type '$OSTYPE'"
      return 1
  fi
  echo "OPAM is now $(command -v opam) with version $(opam --version)"
else
  echo "===== CHECKING VERSION OF INSTALLED OPAM ====="
  # Note: on some OSes 2.0.5 is the latest available version and I am not aware that this does not work.
  # The script is mostly tested with opam 2.0.7
  # See https://opam.ocaml.org/doc/Install.html
  if [ $(version_to_number $(opam --version)) -lt $(version_to_number 2.0.5) ]
  then
    echo "Your installed opam version $(opam --version) is older than 2.0.5."
    echo "This version of opam is not supported."
    echo "If you uninstall opam, this script will install the latest version."
    return 1
  else
    echo "Found opam $(opam --version) - good!"
  fi
fi

which opam

###################### CHECK SYSTEM SANDBOX VERSION #####################

ENABLE_SANDOX=Y
COQ_PLATFORM_OPAM_INIT_EXTRA=""

if [[ "$OSTYPE" == linux* ]]
then
  if ! command -v bwrap &> /dev/null
  then
    echo "========================= BUBBLEWRAP SYSTEM SANDBOX ========================="
    echo "You do not have the sandbox system 'bubblewrap' installed."
    ENABLE_SANDOX=N
  else
    # This is the bwrap version on Ununtu 18.04 LTS, which seems to work
    if [ $(version_to_number $(bwrap --version | cut -f 2 -d ' ')) -lt $(version_to_number 0.2.1) ]
    then
      echo "========================= BUBBLEWRAP SYSTEM SANDBOX ========================="
      echo "Your version of the sandbox system 'bubblewrap' is too old."
      echo "You have version $(bwrap --version | cut -f 2 -d ' ') but we need at least 0.2.1"
      ENABLE_SANDOX=N
    fi
  fi
  if [ $ENABLE_SANDOX == N ]
  then
cat <<EOH

Updating or installing the bubblewrap sandbox on your system might be
difficult. opam uses bubblewrap to make sure that make files access their
local build folders only, so that a gone wild "cd .. && rm -rf" in a
"make clean" does not erase your home folder. This is an extra sefety measure
and it is not strictly required. You have probably run "make" in some open
source software build folder before without using a sandbox. opam has this
extra measure because it runs a lot of builds for many software packages,
which increases the risk.
You can either cancel and try to install or upgrade bubblewrap to at least
version 0.2.1, or you can run opam without sandbox.
========================= BUBBLEWRAP SYSTEM SANDBOX =========================
EOH
    if [[ "${COQREGTESTING:-n}" == n ]]
    then
      ask_user_opt1_cancel "Disable sandbox (d) or cancel (c)?" dD "disable sandbox"
    fi
    COQ_PLATFORM_OPAM_INIT_EXTRA=--disable-sandboxing
  fi
elif [[ "$OSTYPE" == cygwin ]]
then
  COQ_PLATFORM_OPAM_INIT_EXTRA=--disable-sandboxing
fi

###################### INITIALIZE OPAM #####################

if ! opam var root &> /dev/null
then
  echo "===== INITIALIZING OPAM ====="
  if [[ "$OSTYPE" == cygwin ]]
  then
    # On Windows this is the special fdopen cross opam which uses the fdopen repo as default, which we don't want, so specify the default repo explicitly
    # On Windows the lowest prio repo is default='https://opam.ocaml.org', then comes default-mingw='https://github.com/ocaml-opam/opam-repository-mingw.git#sunset'
    # See https://github.com/ocaml-opam/opam-repository-mingw#updates
    opam init --bare --shell-setup --enable-shell-hook --enable-completion 'default' 'https://opam.ocaml.org' $COQ_PLATFORM_OPAM_INIT_EXTRA
  else
    opam init --bare --shell-setup --enable-shell-hook --enable-completion $COQ_PLATFORM_OPAM_INIT_EXTRA
  fi
else
  echo "===== opam already initialized ====="
fi

###################### CREATE OPAM SWITCH #####################

# Prepare list of patch repos
COQ_PLATFORM_OPAM_PATCH_REPOS="${COQ_PLATFORM_REPO_NAME}.patch_coq-released,${COQ_PLATFORM_REPO_NAME}.patch_ocaml"
if [[ "$OSTYPE" == cygwin ]]
then
  COQ_PLATFORM_OPAM_MAIN_REPOS="coq-released,default-mingw,default"
  $COQ_PLATFORM_TIME opam repo add --dont-select default-mingw 'https://github.com/ocaml-opam/opam-repository-mingw.git#sunset'
else
  COQ_PLATFORM_OPAM_MAIN_REPOS="coq-released,default"
fi

if [ "${COQ_PLATFORM_USE_DEV_REPOSITORY}" == 'Y' ]
then
  COQ_PLATFORM_OPAM_PATCH_REPOS="${COQ_PLATFORM_REPO_NAME}.patch_coq-dev,${COQ_PLATFORM_OPAM_PATCH_REPOS}"
  COQ_PLATFORM_OPAM_MAIN_REPOS="coq-core-dev,coq-extra-dev,${COQ_PLATFORM_OPAM_MAIN_REPOS}"
fi

if ! opam switch list --short | fgrep -qx "${COQ_PLATFORM_SWITCH_NAME}" &> /dev/null
then
  echo "===== CREATE OPAM SWITCH ====="
  if [[ "$OSTYPE" == cygwin ]]
  then
    if [ "`uname -m`" = "x86_64" ]; then
      case "${COQ_PLATFORM_OCAML_VERSION}" in
        4.10.2) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+mingw64c";;
        4.12.1) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+flambda+mingw64c";;
        4.13.1) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+flambda+mingw64c";;
        4.14.1) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+flambda+mingw64c";;
        4.14.2) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+flambda+mingw64c";;
        *) echo "Unsupported OCaml version ${COQ_PLATFORM_OCAML_VERSION}"; return 1;;
      esac
    else
      case "${COQ_PLATFORM_OCAML_VERSION}" in
        4.10.2) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+mingw32c";;
        4.12.1) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+flambda+mingw32c";;
        4.13.1) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+flambda+mingw32c";;
        4.14.1) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+flambda+mingw32c";;
        4.14.2) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+flambda+mingw32c";;
        *) echo "Unsupported OCaml version ${COQ_PLATFORM_OCAML_VERSION}"; return 1;;
      esac
    fi
  else
    case "${COQ_PLATFORM_OCAML_VERSION}" in
      4.10.2) COQ_PLATFORM_OCAML_VARIANT="ocaml-base-compiler.${COQ_PLATFORM_OCAML_VERSION}";;
      4.12.1) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+options,ocaml-option-flambda";;
      4.13.1) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+options,ocaml-option-flambda";;
      4.14.1) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+options,ocaml-option-flambda";;
      4.14.2) COQ_PLATFORM_OCAML_VARIANT="ocaml-variants.${COQ_PLATFORM_OCAML_VERSION}+options,ocaml-option-flambda";;
      *) echo "Unsupported OCaml version ${COQ_PLATFORM_OCAML_VERSION}"; return 1;;
    esac
  fi

  # Register Coq Platform specific patch repos
  create_opam_repo opam-repository ocaml
  create_opam_repo opam-coq-archive/released coq-released
  create_opam_repo opam-coq-archive/extra-dev coq-dev

  # Register the Coq repos - note: a repo can be added many times as long as the URL is the same
  $COQ_PLATFORM_TIME opam repo add --dont-select coq-released "https://coq.inria.fr/opam/released"
  $COQ_PLATFORM_TIME opam repo add --dont-select coq-core-dev "https://coq.inria.fr/opam/core-dev"
  $COQ_PLATFORM_TIME opam repo add --dont-select coq-extra-dev "https://coq.inria.fr/opam/extra-dev"

  # Create switch with the patch repo registered right away in case we need to patch OCaml
  $COQ_PLATFORM_TIME opam switch --no-switch create "${COQ_PLATFORM_SWITCH_NAME}" \
    --package="${COQ_PLATFORM_OCAML_VARIANT}" \
    --repositories="${COQ_PLATFORM_OPAM_PATCH_REPOS},${COQ_PLATFORM_OPAM_MAIN_REPOS}" \
    --description="${COQ_PLATFORM_VERSION_TITLE}"

else
  echo "===== opam switch already exists ====="
fi

###################### SELECT OPAM SWITCH #####################

# This sets the switch only locally - in case several picks are built in parallel
eval $(opam env --set-switch --switch ${COQ_PLATFORM_SWITCH_NAME})

echo === OPAM SWITCHES ===
opam switch

echo === OPAM REPOSITORIES ===
opam repo list

echo === OPAM PACKAGES ===
opam list

# Cleanup old build artifacts for current switch ###
# Note: this frequently proved to be required (build errors when doing experiments)
# Note: this keeps downloads and logs

opam clean --switch-cleanup

###################### HACK OPAM ARCHITECTURE ON 32 BIT CYGWIN #####################

# Note: opam running on 32 bit cygwin on 64 bit windows has arch x86_64

if [ "$OSTYPE" == cygwin ] && [ "$BITSIZE" == 32 ] && [ "$(opam var arch)" != i686 ]
then
  conf_file="$(opam var prefix)"/.opam-switch/switch-config
  # Search for "variables {", print it, print an additional variable assignment and continue with next line
  # For everything else (condition 1) do the default action of print $0
  awk '/^variables \{/ {print $0; print "  arch: \"i686\""; next} 1' "$conf_file" > "$conf_file.tmp"
  mv "$conf_file.tmp" "$conf_file"
fi

###################### Update opam ######################

echo "===== UPDATE OPAM REPOSITORIES ====="

if [ ! -f "$HOME/.opam_update_timestamp" ] || [ $(find "$HOME/.opam_update_timestamp" -mmin +60 -print) ]
then
  $COQ_PLATFORM_TIME opam update
  touch "$HOME/.opam_update_timestamp"
else
  $COQ_PLATFORM_TIME opam update ${COQ_PLATFORM_OPAM_PATCH_REPOS//,/ }
fi

###################### snap ######################

if [ ! -z ${SNAPCRAFT_PROJECT_NAME+x} ]
then
  opam var --switch $COQ_PLATFORM_SWITCH_NAME snap=true
fi

###################### final sanity checks ######################

echo "===== FINAL OPAM SANITY CHECKS ====="

# Check if an opam repo is set correctly
# $1 - repo name
# $2 - repo url
# $3 - optional old repo url
function check_repo {
  local url="$(opam repo list | awk "/ $1 / "'{ print $3 }')"
  if [ -n "$url" ] && [ "$url" == "$3" ]
  then
    echo "========================= OPAM REPOS ========================="
    echo "You have a predefined opam repo, which points to a deprecated URL."
    echo "You have '$1' point to '$url' instead of '$2'."
    echo "This is because the opam repo haes been moved somewhere else."
    echo "The Coq Platform scripts cannot continue with this."
    echo "You can fix this with"
    echo "  opam repo set-url $1 '$2'"
    echo "========================= OPAM REPOS ========================="
    exit 1
  elif [ -n "$url" ] && [ "$url" != "$2" ]
  then
    echo "========================= OPAM REPOS ========================="
    echo "You have a predefined opam repo, which does not point to the usual URL."
    echo "You have '$1' point to '$url' instead of '$2'."
    echo "The Coq Platform scripts cannot continue with this."
    echo "You can fix this with"
    echo "  opam repo set-url $1 '$2'"
    echo "but this will likely mess up your existing opam installation."
    echo "Alternatively you can edit the Coq Platform scripts to use different"
    echo "opam repo names (search for $1)."
    echo "This is likely an effect of a very old/outdated opam installation."
    echo "========================= OPAM REPOS ========================="
    exit 1
  fi
}

if [ "$OSTYPE" == cygwin ]
then
  check_repo 'default' 'https://opam.ocaml.org' 'git+https://github.com/fdopen/opam-repository-mingw.git#opam2'
  check_repo 'default-mingw' 'git+https://github.com/ocaml-opam/opam-repository-mingw.git#sunset' 'none'
else
  check_repo 'default' 'https://opam.ocaml.org' 'none'
fi
check_repo 'coq-released' 'https://coq.inria.fr/opam/released' 'none'
check_repo 'coq-core-dev' 'https://coq.inria.fr/opam/core-dev' 'none'
check_repo 'coq-extra-dev' 'https://coq.inria.fr/opam/extra-dev' 'none'
