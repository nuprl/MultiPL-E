#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### DOCUMENTATION #####################

# This script creates a local patch opam file for a package which
# - overrides the Coq version restriction to include 8.16
# The resulting opam file is created in the local "released" folder
# with the same version as the original package

# Parameters
# - $1 = <package name>.<package version>, e.g. coq-mathcomp-ssreflect.1.14.0

###################### CREATE PREVIEW OPAM PACKAGE #####################

set -e
set -u

COQ_PLATFORM_PACKAGE_PICK_POSTFIX=none
source package_picks/coq_platform_release.sh
source package_picks/coq_platform_switch_name.sh

# Split argument in package name and version
name=${1%%.*}
version=${1#*.}

# Create opam folder for package
package="${name}"
echo "package = $package"
mkdir -p opam/opam-coq-archive/released/packages/${name}/${name}.${version}/
opamfile="opam/opam-coq-archive/released/packages/${name}/${name}.${version}/opam"
echo "opamfile = $opamfile"

# Create and patch opam file
opam show --raw ${name}.${version} | sed -e 's/< *"8.17~*"/< "8.18~"/' > "${opamfile}"

# Update repo and instal package
opam update ${COQ_PLATFORM_REPO_NAME}.patch_coq-released
opam install -b ${name}.${version}