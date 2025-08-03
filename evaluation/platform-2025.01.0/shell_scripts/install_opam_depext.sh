#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### INSTALL opam depext #####################

# From opam 2.1.0 on, depext is integrated into opam

if [ $(version_to_number $(opam --version)) -lt $(version_to_number 2.1.0) ]
then
  COQ_PLATFORM_OPAM_DEPEXT_COMMAND='depext'

  echo "===== INSTALL OPAM DEPEXT ====="

  opam --version

  if [ "$OSTYPE" == cygwin ]
  then
    $COQ_PLATFORM_TIME opam install depext depext-cygwinports
  else
    $COQ_PLATFORM_TIME opam install depext
  fi

else
  COQ_PLATFORM_OPAM_DEPEXT_COMMAND='install --confirm-level=unsafe-yes --depext-only'
fi
