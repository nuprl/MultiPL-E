#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Script safety and debugging settings ######################

set -o nounset
set -o errexit

if [ ! -z ${COQ_PLATFORM_VERBOSE+x} ]
then
  set -x
  # Print current wall time as part of the xtrace
  export PS4='+\t '
  # Set command to time opam commands
  # Note/ToDo: the maximum resident set shown by time is the maximum resident set of the largest child,
  # not the maximum resident set of the process tree.
  if [[ "$OSTYPE" == linux* ]]
  then
    COQ_PLATFORM_TIME="/usr/bin/time -v"
  elif [[ "$OSTYPE" == darwin* ]]
  then
    COQ_PLATFORM_TIME="/usr/bin/time -l"
  else
    COQ_PLATFORM_TIME=""
  fi
else
  COQ_PLATFORM_TIME=""
fi
