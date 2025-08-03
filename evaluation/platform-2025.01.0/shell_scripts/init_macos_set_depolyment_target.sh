#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2024 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Select a minimum MacOS version #####################

# This is done to create compatible installers - Coq doesn't use fancy MacOS features.

if [[ "$OSTYPE" == darwin* ]]
then
case $(uname -m) in
    i686)
      export MACOSX_DEPLOYMENT_TARGET=10.13
      ;;
    x86_64)
      export MACOSX_DEPLOYMENT_TARGET=10.13
      ;;
    arm64|aarch64)
      export MACOSX_DEPLOYMENT_TARGET=11.0
      ;;
    *)
      echo "Cannot interpret result of 'uname -m' ($(uname -m))"
      exit 1
      ;;
esac
echo "INFO: minimum MacOS version for the build has been set to $MACOSX_DEPLOYMENT_TARGET"
fi
