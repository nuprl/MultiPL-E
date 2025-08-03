#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2025 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### POST CHECKS / FIXES #####################

if [[ "$OSTYPE" == cygwin ]]
then
  # Call the script to link shared libraries into the bin folder.
  # This is required e.g. to call vscoqtop from VSCoq without setting PATH.
  /platform/windows/link_shared_libraries.sh
fi
