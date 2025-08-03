#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### USER CHOICES #####################

# VST yes / no

if grep -q "COQ_PLATFORM_FIATCRYPTO" "${COQ_PLATFORM_PACKAGE_PICK_FILE}" && [ "${BITSIZE}" == "64" ] && [ "${COQ_PLATFORM_EXTENT}" == "x" ]
then
  if [ -z "${COQ_PLATFORM_FIATCRYPTO:+x}" ]
  then
cat <<EOH
====================== CORRECT BY DESIGN CODE GENERATION ======================
The Coq Platform includes a package set for correct by design code generation.
These packages are mostly work in progress and part of the extended level.

  coq-coqutil:     Coq library for tactics, basic definitions, sets, maps
  coq-rewriter:    Reflective PHOAS rewriting/pattern-matching framework
  coq-riscv:       RISC-V Specification in Coq, somewhat experimental
  coq-bedrock2:    A WIP language for verified low-level programming
  coq-bedrock2-compiler: A WIP compiler for coq-bedrock2
  coq-rupicola:    Gallina to imperative code compilation (WIP)
  coq-fiat-crypto: Cryptographic Primitive Code Generation by Fiat

Unfortunately this package set takes a while to build - on a fast machine with
64GB RAM it may be just 10..15 minutes, but on a slow machine with 4GB RAM it
might be 2 hours.

In case you do not plan to use these packages, you might want
to select no (n) below. You can install these packages at any time later with:

  opam install coq-fiat-crypto
====================== CORRECT BY DESIGN CODE GENERATION ======================
EOH
    ask_user_opt2_cancel "Install above packages (y) or do not install (n)?" yY "install" nN "do not install"
    COQ_PLATFORM_FIATCRYPTO=$ANSWER
  fi
else
  COQ_PLATFORM_FIATCRYPTO=n
fi
