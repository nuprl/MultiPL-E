#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### DOCUMENTATION #####################

# This script first tries if a package install as is, and if not tries various levels of patching (until success or fail)

# Parameters
# - $1 = <package name>.<package version>, e.g. coq-mathcomp-ssreflect.1.14.0

###################### CREATE PREVIEW OPAM PACKAGE #####################

set -e
set -u

echo "TRYING opam install $1"
if opam install "$1"
then
  echo "SUCCESS opam install $1"
  exit 0
fi
echo "FAILED opam install $1"

echo "TRYING maintainer_scripts/patch_opam_package_allow_new_coq.sh $1"
if maintainer_scripts/patch_opam_package_allow_new_coq.sh "$1"
then
  echo "SUCCESS patch_opam_package_allow_new_coq.sh $1"
  exit 0
fi
echo "FAILED maintainer_scripts/patch_opam_package_allow_new_coq.sh $1"

echo "TRYING maintainer_scripts/patch_opam_package_latest_commit.sh $1"
if maintainer_scripts/patch_opam_package_latest_commit.sh "$1"
then
  echo "SUCCESS patch_opam_package_latest_commit $1"
  exit 0
fi
echo "FAILED maintainer_scripts/patch_opam_package_latest_commit.sh $1"

echo "FAILED: all known patch methods failed"
