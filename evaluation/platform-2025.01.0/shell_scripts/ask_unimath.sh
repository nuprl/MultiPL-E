#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### USER CHOICES #####################

# UNIMATH yes / no

if grep -q "COQ_PLATFORM_UNIMATH" "${COQ_PLATFORM_PACKAGE_PICK_FILE}"
then
  if [ -z "${COQ_PLATFORM_UNIMATH:+x}" ]
  then
cat <<EOH
======================= UNIVALENT MATHEMATICS LIBRARY =======================
The Coq Platform includes the Univalent Mathematics Library.

Unfortunately UniMath takes a while to build - on a fast machine with 64GB RAM it
may be just 10..15 minutes, but on a slow machine with 4GB RAM it might be
2 hours or even fail (bulding UniMath exceeds 2GB per coqc instance).

In case you do not plan to use univalent mathematics, you might want
to select no (n) below. You can install UniMath at any time later with:

  opam install coq-unimath
======================= UNIVALENT MATHEMATICS LIBRARY =======================
EOH
    ask_user_opt2_cancel "Install UniMath (y) or do not install UniMath (n)?" yY "install UniMath" nN "do not install UniMath"
    COQ_PLATFORM_UNIMATH=$ANSWER
  fi
else
  COQ_PLATFORM_UNIMATH='n'
fi
