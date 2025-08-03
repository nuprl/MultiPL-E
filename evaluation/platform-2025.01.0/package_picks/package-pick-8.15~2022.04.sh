#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020..2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### CONTROL VARIABLES #####################

# The two lines below are used by the package selection script
COQ_PLATFORM_VERSION_TITLE="Coq 8.15.2 (released Jun 2022) with the first package pick from Apr 2022"
COQ_PLATFORM_VERSION_SORTORDER=6

# The package list name is the final part of the opam switch name.
# It is usually either empty ot starts with ~.
# It might also be used for installer package names, but with ~ replaced by _
# It is also used for version specific file selections in the smoke test kit.
COQ_PLATFORM_PACKAGE_PICK_POSTFIX='~8.15~2022.04'

# The corresponding Coq development branch and tag
COQ_PLATFORM_COQ_BRANCH='v8.15'
COQ_PLATFORM_COQ_TAG='8.15.2'

# This controls if opam repositories for development packages are selected
COQ_PLATFORM_USE_DEV_REPOSITORY='N'

# This extended descriptions is used for readme files
COQ_PLATFORM_VERSION_DESCRIPTION='This version of Coq Platform 2025.01.0 includes Coq 8.15.2 from Jun 2022. '
COQ_PLATFORM_VERSION_DESCRIPTION+='There are two package picks for Coq 8.15.2: the original from 04/2022, and an updated/extended one from 09/2022. '
COQ_PLATFORM_VERSION_DESCRIPTION+='This is the original package pick for Coq 8.15.2 from 04/2022. '

# The OCaml version to use for this pick (just the version number - options are elaborated in a platform dependent way)
COQ_PLATFORM_OCAML_VERSION='4.13.1'

###################### PACKAGE SELECTION #####################

PACKAGES=""

# - Comment out packages you do not want.
# - Packages which take a long time to build should be given last.
#   There is some evidence that they are built early then.
# - Versions ending with ~flex are identical to the opam package without the
#   ~flex extension, except that version restrictions have been relaxed.
# - The picking tracker issue is https://github.com/coq/platform/issues/193

########## BASE PACKAGES ##########

# The Coq compiler coqc and the Coq standard library
PACKAGES="${PACKAGES} PIN.coq.8.15.2"

########## IDE PACKAGES ##########

# GTK based IDE for Coq - alternatives are VSCoq and Proofgeneral for Emacs
if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[iIfFxX] ]]
then
PACKAGES="${PACKAGES} coqide.8.15.2 lablgtk3.3.1.2"
fi

########## "FULL" COQ PLATFORM PACKAGES ##########

if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[fFxX] ]]
then
  # Standard library extensions
  PACKAGES="${PACKAGES} coq-bignums.8.15.0"
  PACKAGES="${PACKAGES} coq-ext-lib.0.11.6"
  PACKAGES="${PACKAGES} coq-stdpp.1.7.0"

  # General mathematics
  PACKAGES="${PACKAGES} coq-mathcomp-ssreflect.1.14.0"
  PACKAGES="${PACKAGES} coq-mathcomp-fingroup.1.14.0"
  PACKAGES="${PACKAGES} coq-mathcomp-algebra.1.14.0"
  PACKAGES="${PACKAGES} coq-mathcomp-solvable.1.14.0"
  PACKAGES="${PACKAGES} coq-mathcomp-field.1.14.0"
  PACKAGES="${PACKAGES} coq-mathcomp-character.1.14.0"
  PACKAGES="${PACKAGES} coq-mathcomp-bigenough.1.0.1"
  PACKAGES="${PACKAGES} coq-mathcomp-finmap.1.5.1"
  PACKAGES="${PACKAGES} coq-mathcomp-real-closed.1.1.2"
  PACKAGES="${PACKAGES} coq-mathcomp-zify.1.2.0+1.12+8.13"
  PACKAGES="${PACKAGES} coq-mathcomp-multinomials.1.5.5"
  PACKAGES="${PACKAGES} coq-coquelicot.3.2.0"

  # Number theory
  PACKAGES="${PACKAGES} coq-coqprime.1.1.1"
  PACKAGES="${PACKAGES} coq-coqprime-generator.1.1.1"
  
  # Numerical mathematics
  PACKAGES="${PACKAGES} coq-flocq.4.0.0"
  PACKAGES="${PACKAGES} coq-interval.4.4.0"
  PACKAGES="${PACKAGES} coq-gappa.1.5.1 gappa.1.4.0"
  # Legacy Flocq3 compatible packages
  PACKAGES="${PACKAGES} coq-flocq3.3.4.3"
  PACKAGES="${PACKAGES} coq-interval-flocq3.4.4.0"
  PACKAGES="${PACKAGES} coq-gappa-flocq3.1.5.1"

  # Constructive mathematics
  PACKAGES="${PACKAGES} coq-math-classes.8.15.0"
  PACKAGES="${PACKAGES} coq-corn.8.13.0"

  # Homotopy Type Theory (HoTT)
  PACKAGES="${PACKAGES} coq-hott.8.15"

  # Univalent Mathematics (UniMath)
  # Note: coq-unimath requires too much memory for 32 bit architectures
  if [ "${BITSIZE}" == "64" ]
  then
    case "$COQ_PLATFORM_UNIMATH" in
    [yY]) PACKAGES="${PACKAGES} coq-unimath.20220204" ;;
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_UNIMATH - aborting"; false ;;
    esac
  fi 

  # Code extraction
  PACKAGES="${PACKAGES} coq-simple-io.1.7.0"

  # Proof automation / generation / helpers
  PACKAGES="${PACKAGES} coq-menhirlib.20220210 menhir.20220210"
  PACKAGES="${PACKAGES} coq-equations.1.3+8.15"
  PACKAGES="${PACKAGES} coq-aac-tactics.8.15.1"
  PACKAGES="${PACKAGES} coq-unicoq.1.6+8.15"
  PACKAGES="${PACKAGES} coq-mtac2.1.4+8.15"
  PACKAGES="${PACKAGES} elpi.1.15.2 coq-elpi.1.14.0" #The previous used version was broken, so we use the same as the next 8.15 pick
  PACKAGES="${PACKAGES} coq-hierarchy-builder.1.3.0" #Had to additionally upgrade hierarchy builder due to dependency constraints
  PACKAGES="${PACKAGES} coq-quickchick.1.6.1"
  PACKAGES="${PACKAGES} coq-hammer-tactics.1.3.2+8.15"
  if [[ "$OSTYPE" != cygwin ]]
  then
    # coq-hammer does not work on Windows because it heavily relies on fork
    PACKAGES="${PACKAGES} coq-hammer.1.3.2+8.15"
    PACKAGES="${PACKAGES} eprover.2.6"
    PACKAGES="${PACKAGES} z3_tptp.4.13.0"
  fi
  PACKAGES="${PACKAGES} coq-paramcoq.1.1.3+coq8.15"
  PACKAGES="${PACKAGES} coq-coqeal.1.1.0"
  PACKAGES="${PACKAGES} coq-libhyps.2.0.5"

  # General mathematics (which requires one of the above tools)
  PACKAGES="${PACKAGES} coq-mathcomp-analysis.0.5.4"
  PACKAGES="${PACKAGES} coq-relation-algebra.1.7.7"

  # Formal languages, compilers and code verification
  PACKAGES="${PACKAGES} coq-reglang.1.1.3"
  PACKAGES="${PACKAGES} coq-iris.3.6.0"
  PACKAGES="${PACKAGES} coq-iris-heap-lang.3.6.0"
  PACKAGES="${PACKAGES} coq-ott.0.32"
  PACKAGES="${PACKAGES} ott.0.32"
  
  case "$COQ_PLATFORM_COMPCERT" in
    [yY]) PACKAGES="${PACKAGES} coq-compcert.3.10" ;;
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_COMPCERT - aborting"; false ;;
  esac

  case "$COQ_PLATFORM_VST" in
    [yY]) PACKAGES="${PACKAGES} coq-vst.2.9.1" ;;
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_VST - aborting"; false ;;
  esac

  # Proof analysis and other tools
  PACKAGES="${PACKAGES} coq-dpdgraph.1.0+8.15"

fi

########## EXTENDED" COQ PLATFORM PACKAGES ##########

if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[xX] ]]
then

  # General mathematics
  PACKAGES="${PACKAGES} coq-mathcomp-algebra-tactics.0.3.0"
  PACKAGES="${PACKAGES} coq-extructures.0.3.1"

  # Proof automation / generation / helpers
  PACKAGES="${PACKAGES} coq-deriving.0.1.0"

  # Gallina extensions
  PACKAGES="${PACKAGES} coq-reduction-effects.0.1.3"
  PACKAGES="${PACKAGES} coq-record-update.0.3.0"

  # Communication with coqtop
  # PACKAGES="${PACKAGES} coq-serapi.8.15.0+0.15.0" # removed - smoke test crashes in 8.15

fi
