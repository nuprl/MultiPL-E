#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### USER CHOICES #####################

# package list

if [ -z "${COQ_PLATFORM_PACKAGE_PICK_FILE:+x}" ]
then
cat <<EOH
========================= SELECT PACKAGE_PICK VERSION ==========================
The Coq Platform allows to install the latest release version of Coq, but also
older or development versions of Coq. Besides the Coq version, you can choose
a 'package pick', that is a selection of specific versions of Coq libraries,
plugins and tools. For some versions of Coq several package picks are available.
Package picks with the same release date for different Coq versions are made
as compatible as possible.
You can install several versions of Coq in parallel, which simplifies porting of
developments. You can use "opam switch" to switch between Coq versions.

The following Coq versions and package picks are available:
EOH

  packagefile_list="$( (for file in package_picks/package-pick-*.sh; do echo "$(grep "COQ_PLATFORM_VERSION_SORTORDER=" $file) $file"; done) | tr '=' ' ' | sed 's/  */ /g' | sort -n -k 2 | cut -d ' ' -f 3)"

  packageindex=0
  for packagefile in ${packagefile_list}
  do
      if ! grep -q "COQ_PLATFORM_VERSION_SORTORDER=" "$packagefile"; then echo "ERROR: package file '$packagefile' does not contain 'COQ_PLATFORM_VERSION_SORTORDER' definition."; fail; fi
      if ! grep -q "COQ_PLATFORM_VERSION_TITLE=" "$packagefile"; then echo "ERROR: package file '$packagefile' does not contain 'COQ_PLATFORM_VERSION_TITLE' definition."; fail; fi
      packageindex=$((${packageindex} + 1))
      notes="$(grep 'COQ_PLATFORM_VERSION_TITLE=' "${packagefile}" | tr '=' ' ' | tr -d '"' | sed 's/  */ /g' | cut -d ' ' -f 2-)"
      echo "(${packageindex}): $notes"
  done

cat <<EOH

Please select a package pick by entering the number shown at the begin of a line.
========================= SELECT PACKAGE_PICK VERSION ==========================
EOH
  ask_user_number "Select package list" 1 "${packageindex}"
  packageindex=0
  for packagefile in ${packagefile_list}
  do
    packageindex=$((${packageindex} + 1))
    if [ "${packageindex}" -eq "${ANSWER}" ]
    then
      COQ_PLATFORM_PACKAGE_PICK_FILE="${packagefile}"
    fi
  done
  if [ -z "${COQ_PLATFORM_PACKAGE_PICK_FILE:+x}" ]
  then
    echo "INTERNAL ERROR: not package list file selected!"
    false
  fi
fi
