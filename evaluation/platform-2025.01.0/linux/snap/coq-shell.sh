#!/bin/bash

# This shell scripts uses the path of the script itself to
# set the COQBIN, COQLIB and PATH variables before invoking
# the users prefered shell in interatcive mode

COQBIN="$(cd $(dirname $0); pwd)"

if [ -f "$COQBIN/coqc" ]
then
  echo "Using coq from '$COQBIN'"
else
  echo "ERROR: cannot find coqc in '$COQBIN'"
  exit 1
fi

COQSTUB="$(cd $(dirname $0)/../lib/stublibs/; pwd)"
export COQLIB="$(cd $(dirname $0)/../lib/coq/; pwd)"
export PATH="$COQBIN:$PATH"
export LD_LIBRARY_PATH="$COQSTUB${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"

$SHELL -i
