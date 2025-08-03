#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### DOCUMENTATION #####################

# This script creates a local patch opam file for a package which
# - overrides the Coq version restriction to include 8.16
# - overrides the package to the latest commit on master
# The resulting opam file is created in the local "extra-dev" folder
# with version name "preview"

# Parameters
# - $1 = <package name>.<package version>, e.g. coq-mathcomp-ssreflect.1.14.0 - the version is used as base

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
mkdir -p opam/opam-coq-archive/extra-dev/packages/${name}/${name}.preview/
opamfile="opam/opam-coq-archive/extra-dev/packages/${name}/${name}.preview/opam"
echo "opamfile = $opamfile"

# Extract old URL and checksum from opam
oldurl="$(opam show --field url.src: ${name}.${version})"
echo "oldurl = $oldurl"
oldchecksum="$(opam show --field url.checksum: ${name}.${version})"
echo "oldchecksum = $oldchecksum"

# Extract base URL from old URL
baseurl="$(opam show --field dev-repo ${name}.${version})"
baseurl="${baseurl//\"/}"
baseurl="${baseurl#git\+}"
baseurl="${baseurl%.git}"
echo "baseurl = $baseurl"

# Get HEAD commit from base URL and construct new URL
commit=$(git ls-remote $baseurl.git HEAD | awk  '/\tHEAD/ {print $1}')
echo "commit = $commit"
if [[ "${baseurl}" =~ https://github\.com/.* ]]
then
  newurl="${baseurl}/archive/${commit}.tar.gz"
elif [[ "${baseurl}" =~ https://gitlab\..* ]]
then
  newurl="${baseurl}/-/archive/${commit}.tar.gz"
else
  echo "ERROR: don't know how to derive archive URL for base url ${baseurl}"
  exit 1
fi
echo "newurl = $newurl"

# Download tar.gz file and compute new checksum
newchecksum="$(wget -qO - "${newurl}" | openssl dgst --sha512)"
newchecksum="\"sha512=${newchecksum#*= }\""
echo "newchecksum = $newchecksum"
newurl="\"${newurl}\""

# Create and patch opam file
opam show --raw ${name}.${version} | sed -e "s|${oldurl}|${newurl}|" -e 's/< *"8.16~"/< "8.17~"/' -e 's/{[^}]*dev[^}]*}//'> "${opamfile}" -e 's/version: .*/version: "preview"/'

if [ -n "$oldchecksum" ]
then
    sed -i .bak -e "s|${oldchecksum}|${newchecksum}|" "${opamfile}"
else
    sed -i .bak -e "s|src:|checksum:${newchecksum} src:|" "${opamfile}"
fi
rm "${opamfile}.bak"

# Possibly remove "allow new coq" opam file
rm opam/opam-coq-archive/released/packages/${name}/${name}.${version}/opam || true
rmdir opam/opam-coq-archive/released/packages/${name}/${name}.${version} || true
rmdir opam/opam-coq-archive/released/packages/${name} || true

opam update ${COQ_PLATFORM_REPO_NAME}.patch_coq-dev
opam install -b ${name}.preview