#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020..2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### CONTROL VARIABLES #####################

# The two lines below are used by the package selection script
COQ_PLATFORM_VERSION_TITLE="Coq dev (latest master of all packages)"
COQ_PLATFORM_VERSION_SORTORDER=99

# The package list name is the final part of the opam switch name.
# It is usually either empty ot starts with ~.
# It might also be used for installer package names, but with ~ replaced by _
# It is also used for version specific file selections in the smoke test kit.
COQ_PLATFORM_PACKAGE_PICK_POSTFIX='~dev'

# The corresponding Coq development branch and tag
COQ_PLATFORM_COQ_BRANCH='dev'
COQ_PLATFORM_COQ_TAG='dev'

# This controls if opam repositories for development packages are selected
COQ_PLATFORM_USE_DEV_REPOSITORY='Y'

# This extended descriptions is used for readme files
COQ_PLATFORM_VERSION_DESCRIPTION='This is the latest development version of Coq and all packages.'

# The OCaml version to use for this pick (just the version number - options are elaborated in a platform dependent way)
COQ_PLATFORM_OCAML_VERSION='4.14.2'

###################### PACKAGE SELECTION #####################

PACKAGES=""

# - Comment out packages you do not want.
# - Packages which take a long time to build should be given last.
#   There is some evidence that they are built early then.

########## BASE PACKAGES ##########

# The Coq compiler coqc and the Coq standard library
PACKAGES="${PACKAGES} PIN.coq.dev"
# Coq needs a patched ocamlfind to be relocatable by installers
PACKAGES="${PACKAGES} PIN.ocamlfind.1.9.5~relocatable"

########## IDE PACKAGES ##########

# GTK based IDE for Coq - alternatives are VSCoq and Proofgeneral for Emacs
if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[iIfFxX] ]]
then
PACKAGES="${PACKAGES} coqide.dev"
fi

########## "FULL" COQ PLATFORM PACKAGES ##########

if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[fFxX] ]]
then
  # Some dependencies for which we need specific versions
  PACKAGES="${PACKAGES} PIN.sexplib0.v0.14.0"         # coq-serapi requires this version
  PACKAGES="${PACKAGES} PIN.ppxlib.0.25.1"            # coq-serapi requires this version

  # Standard library extensions
  PACKAGES="${PACKAGES} coq-bignums.dev"
  PACKAGES="${PACKAGES} coq-ext-lib.dev"
  PACKAGES="${PACKAGES} coq-stdpp.dev" 

  # General mathematics
  PACKAGES="${PACKAGES} coq-mathcomp-ssreflect.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-fingroup.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-algebra.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-solvable.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-field.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-character.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-bigenough.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-finmap.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-real-closed.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-zify.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-multinomials.dev"
  PACKAGES="${PACKAGES} coq-coquelicot.dev"

  # Number theory
  PACKAGES="${PACKAGES} coq-coqprime.dev"
  PACKAGES="${PACKAGES} coq-coqprime-generator.dev"
  
  # Numerical mathematics
  PACKAGES="${PACKAGES} coq-flocq.dev"
  PACKAGES="${PACKAGES} coq-interval.dev"
  PACKAGES="${PACKAGES} coq-gappa.dev gappa.dev"

  # Constructive mathematics
  PACKAGES="${PACKAGES} coq-math-classes.dev"
  PACKAGES="${PACKAGES} coq-corn.dev"

  # Homotopy Type Theory (HoTT)
  PACKAGES="${PACKAGES} coq-hott.dev"

  # Univalent Mathematics (UniMath)
  # Note: coq-unimath requires too much memory for 32 bit architectures
  if [ "${BITSIZE}" == "64" ]
  then
    case "$COQ_PLATFORM_UNIMATH" in
    [yY]) PACKAGES="${PACKAGES} coq-unimath.dev" ;;
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_UNIMATH - aborting"; false ;;
    esac
  fi 

  # Code extraction
  PACKAGES="${PACKAGES} coq-simple-io.dev"

  # Proof automation / generation / helpers
  PACKAGES="${PACKAGES} coq-menhirlib.dev menhir.dev"
  PACKAGES="${PACKAGES} coq-equations.dev"
  PACKAGES="${PACKAGES} coq-aac-tactics.dev"
  PACKAGES="${PACKAGES} coq-unicoq.dev"
  PACKAGES="${PACKAGES} coq-mtac2.dev"
  PACKAGES="${PACKAGES} coq-elpi.dev"
  PACKAGES="${PACKAGES} coq-hierarchy-builder.dev"
  PACKAGES="${PACKAGES} coq-quickchick.dev"
  PACKAGES="${PACKAGES} coq-hammer-tactics.dev"
  if [[ "$OSTYPE" != cygwin ]]
  then
    # coq-hammer does not work on Windows because it heavily relies on fork
    PACKAGES="${PACKAGES} coq-hammer.dev"
    PACKAGES="${PACKAGES} eprover.2.6"
    PACKAGES="${PACKAGES} z3_tptp.4.8.14"
  fi
  PACKAGES="${PACKAGES} coq-paramcoq.dev"
  PACKAGES="${PACKAGES} coq-coqeal.dev"
  PACKAGES="${PACKAGES} coq-libhyps.dev"
  PACKAGES="${PACKAGES} coq-itauto.dev"

  # General mathematics (which requires one of the above tools)
  PACKAGES="${PACKAGES} coq-mathcomp-analysis.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-algebra-tactics.dev"
  PACKAGES="${PACKAGES} coq-relation-algebra.dev"

  # Formal languages, compilers and code verification
  PACKAGES="${PACKAGES} coq-reglang.dev"
  PACKAGES="${PACKAGES} coq-iris.dev"
  PACKAGES="${PACKAGES} coq-iris-heap-lang.dev"
  PACKAGES="${PACKAGES} coq-ott.dev"
  PACKAGES="${PACKAGES} ott.dev"
  PACKAGES="${PACKAGES} coq-mathcomp-word.dev"
  
  case "$COQ_PLATFORM_COMPCERT" in
    [yY]) PACKAGES="${PACKAGES} coq-compcert.dev" ;;
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_COMPCERT - aborting"; false ;;
  esac

  case "$COQ_PLATFORM_VST" in
    [yY]) PACKAGES="${PACKAGES} coq-vst.dev" ;;
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_VST - aborting"; false ;;
  esac

  # Proof analysis and other tools
  PACKAGES="${PACKAGES} coq-dpdgraph.dev"

fi

########## EXTENDED" COQ PLATFORM PACKAGES ##########

if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[xX] ]]
then

  # Proof automation / generation / helpers
  PACKAGES="${PACKAGES} coq-deriving.dev"

  # General mathematics
  PACKAGES="${PACKAGES} coq-extructures.dev"

  # Gallina extensions
  PACKAGES="${PACKAGES} coq-reduction-effects.dev"
  PACKAGES="${PACKAGES} coq-record-update.dev"

  # Communication with coqtop
  PACKAGES="${PACKAGES} coq-serapi.dev"

  # Bedrock2, fiat crypto, ...
  PACKAGES="${PACKAGES} coq-coqutil.dev"
  # PACKAGES="${PACKAGES} coq-bedrock2.dev"                   # Error: "sed: illegal option -- z"
fi
