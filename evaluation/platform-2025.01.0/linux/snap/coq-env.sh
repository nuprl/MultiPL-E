#!/bin/bash

# This shell scripts uses the path of the script itself to
# output set commands for the COQBIN, COQLIB and PATH variables 

COQBIN="$(cd $(dirname $0); pwd)"
COQLIB="$(cd $(dirname $0)/../lib/coq/; pwd)"
COQSTUB="$(cd $(dirname $0)/../lib/stublibs/; pwd)"

if [ -f "$COQBIN/coqc" ]
then
  echo "export COQLIB='$COQLIB'"
  echo "export PATH='$COQBIN':"'"$PATH"'
  echo "export LD_LIBRARY_PATH='$COQSTUB'"'"${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"'
fi
