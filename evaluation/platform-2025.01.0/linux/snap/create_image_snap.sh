#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### CREATE SNAP INSTALLER IMAGE ######################

# Expected command line arguments
# $1 = install root

###################### Preliminaries ######################

echo "##### Building SNAP installer image #####"

###### Script safety ######

set -o nounset
set -o errexit
HERE="$(pwd)"

function onerror {
  find $DIR_TARGET -type f
}

trap onerror EXIT

###### Parse command line ######

DIR_TARGET='snap_installer_image'

for arg in "$@"
do
  case "${arg}" in
    -dest=*|-d=*) DIR_TARGET="${arg#*=}" ;;
    *) echo "ERROR: Unknown command line argument ${arg}!"; false;;
  esac
done

###### Common utilities ######

source shell_scripts/installer_utilities.sh

##### Get the release and package pick of the Coq Platform #####

source shell_scripts/get_names_from_switch.sh

###### Create root folder #####

rm -rf "$DIR_TARGET"
mkdir -p "$DIR_TARGET"
LOGDIR="snap_installer/logs" 
mkdir -p "${LOGDIR}"
MODDIR="snap_installer/mods" 
mkdir -p "${MODDIR}"

###################### Coq and Coq Platform version ######################

echo "##### Coq Platform release = ${COQ_PLATFORM_RELEASE} version = ${COQ_PLATFORM_PACKAGE_PICK_POSTFIX} #####" 

###################### Handle system packages ######################

# For snap all system dependecies are handled by plugs

###################### Adding stuff manually ######################

# For snap all system dependecies are handled by plugs

###################### Callback functions for package analyzer ######################

# callback_package_primary
# callback_package_secondary
#   $1 = package name
#   $2 = dependency level
#   $3 = file inclusion list RE
#   $4 = file exclusion list RE
#   Create the installer information for a primary (user visible) or secondary (not user visible) package.
#   For installers which produce plain images, this is usually empty.

function callback_package_primary {
  true
}

function callback_package_secondary {
  true
}

# callback_dependency_primary
# callback_dependency_secondary
#   $1 = package which depends on $2
#   $2 = package on which $1 depends
#   Create the installer information for a primary (user visible) or secondary (not user visible) package dependency.
#   For installers which produce plain images, this is usually empty.

function callback_dependency_primary {
  true
}

function callback_dependency_secondary {
  true
}

# callback_file
#   $1 = package name
#   $2 = absolute path to source file (in .opam)
#   $3 = relative path (without name)
#   $4 = file name
#   Create the installer information for a single file.
#   This either copies the file or creates a file reference in an installer description file

function callback_file {
  mkdir -p "$DIR_TARGET/$3"
  ln "$2" "$DIR_TARGET/$3/"
}

###################### Create installer folder structure ######################

mkdir -p ${DIR_TARGET}

###################### TOP LEVEL FILE GATHERING ######################

##### System independent opam file copying #####

source "${HERE}"/shell_scripts/installer_create_tree.sh

##### Patch ocamlfind META files - the exists_if lines usually reference compile time libs

# NOTE: we assume here that sed -i".bak" copies the file and breaks the hard link
find "$DIR_TARGET/lib/" -name "META" | xargs -n 1 sed -i".bak" 's/^ *exists_if.*//'
find "$DIR_TARGET/lib/" -name "META.bak" -delete
