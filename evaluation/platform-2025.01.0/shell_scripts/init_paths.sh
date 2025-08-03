#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### PATHS #####################

# The folder of the main script (*not* this script!)
SCRIPTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." >/dev/null 2>&1 && pwd)"

if [[ "$OSTYPE" == cygwin ]]
then
  OPAMPACKAGES=$(cygpath -ma "$SCRIPTDIR/opam")
else
  OPAMPACKAGES="$SCRIPTDIR/opam"
fi
