#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### MACHINE INFORMATION #####################

# Determine bitsize of machine / build environment
# On a 32 bit cygwin on 64 bit windows, this shall be 32
# HYPHEN32 and HYPHEN64 are used as extensions to compiler like opam package names

case $(uname -m) in
    i686)
      BITSIZE=32
      HYPHEN32=-32
      HYPHEN64=
      ;;
    x86_64)
      BITSIZE=64
      HYPHEN32=
      HYPHEN64=-64
      ;;
    arm64|aarch64)
      BITSIZE=64
      HYPHEN32=
      HYPHEN64=-64
      ;;
    *)
      echo "Cannot interpret result of 'uname -m' ($(uname -m))"
      exit 1
      ;;
esac
