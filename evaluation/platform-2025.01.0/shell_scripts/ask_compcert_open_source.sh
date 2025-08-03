#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### USER CHOICES #####################

# CompCert open source or full

if [ -z "${COQ_PLATFORM_COMPCERT:+x}" ]
then
  if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[fFxX] ]]
  then
cat <<EOH
================================== COMPCERT ==================================
The Coq Platform installs the formally verified C compiler CompCert.

CompCert is *not* free / open source software, but may be used for research and
evaluation purposes. Please clarify the license at:

https://github.com/AbsInt/CompCert/blob/master/LICENSE

In case you intend to use CompCert and your intended usage is in compliance
with the above license, please select "y" below, otherwise "n".

Please note that CompCert is required for the (open source) C verification
tool chain VST. If you don't install CompCert, you can't install VST.
If you want to use VST with the provided VST examples only, you require only
parts of CompCert, which are dual licensed and open source. In case you want
to verify your own C code with VST, you need non open source parts of
CompCert, notably the clightgen program. CompCert does not support
installing only its open source parts, since evaluation usage is explicitly
allowed in the license (see link above).
================================== COMPCERT ==================================
EOH
    ask_user_opt2_cancel "Install non open source SW CompCert (y) or (n)?" yY "install CompCert" nN "do not install CompCert"
    COQ_PLATFORM_COMPCERT=$ANSWER
  else
    COQ_PLATFORM_COMPCERT=n
  fi
fi
