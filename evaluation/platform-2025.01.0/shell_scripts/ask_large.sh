#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### USER CHOICES #####################

# large packages yes / no / select individually

if [ -z "${COQ_PLATFORM_LARGE:+x}" ]
then
cat <<EOH
=============================== LARGE PACKAGES ===============================
The Coq Platform includes several packages which take a while to build.

The most time consuming packages are

  coq-vst:     a toolchain for verifying C code
  coq-unimath: a library for univalent mathematics
  coq-fiat-crypto, coq-bedrock2 and dependencies: (64 bit platforms only)
               Framework for correct by design code generation
               Cryptographic Primitive Code Generation by Fiat

Depending on your computer each of these packages takes between 10 minutes
and 2 hours to build. With just 4GB of RAM these packages might even fail
to build. In case you do not plan to use these packages, you can skip them
now. You can install them any time later with:

  opam install "package-name"
=============================== LARGE PACKAGES ===============================
EOH
  ask_user_opt3_cancel "Include (i) exclude (e) or select (s) large packages?" iI "include" eE "exclude" sS "individually select large packages"
  COQ_PLATFORM_LARGE=$ANSWER
fi

case "$COQ_PLATFORM_LARGE" in
[iI]) COQ_PLATFORM_LARGE_DEFAULT=y ;;
[eE]) COQ_PLATFORM_LARGE_DEFAULT=n ;;
esac

if [ "${COQ_PLATFORM_LARGE_DEFAULT:-__unset__}" != "__unset__" ]
then
  COQ_PLATFORM_VST=${COQ_PLATFORM_VST:-${COQ_PLATFORM_LARGE_DEFAULT}}
  COQ_PLATFORM_UNIMATH=${COQ_PLATFORM_UNIMATH:-${COQ_PLATFORM_LARGE_DEFAULT}}
  COQ_PLATFORM_FIATCRYPTO=${COQ_PLATFORM_FIATCRYPTO:-${COQ_PLATFORM_LARGE_DEFAULT}}
fi