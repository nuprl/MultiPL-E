#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020..2021 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### CONTROL VARIABLES #####################

# The two lines below are used by the package selection script
COQ_PLATFORM_VERSION_TITLE="Coq 8.13.2 (released Apr 2021) with an extended package pick from Sep 2021"
COQ_PLATFORM_VERSION_SORTORDER=106

# The package list name is the final part of the opam switch name.
# It is usually either empty ot starts with ~.
# It might also be used for installer package names, but with ~ replaced by _
# It is also used for version specific file selections in the smoke test kit.
COQ_PLATFORM_PACKAGE_PICK_POSTFIX='~8.13~2021.09'

# The corresponding Coq development branch and tag
COQ_PLATFORM_COQ_BRANCH='v8.13'
COQ_PLATFORM_COQ_TAG='8.13.2'

# This controls if opam repositories for development packages are selected
COQ_PLATFORM_USE_DEV_REPOSITORY='N'

# This extended descriptions is used for readme files
COQ_PLATFORM_VERSION_DESCRIPTION='This version of Coq Platform 2025.01.0 includes Coq 8.13.2 from 04/2021. '
COQ_PLATFORM_VERSION_DESCRIPTION+='There are three package picks for Coq 8.13.2: the original from 02/2021, a substantially extended one from 09/2021 and an updated one from 11/2021. '
COQ_PLATFORM_VERSION_DESCRIPTION+='This is the substantially extended and updated package pick from 09/2021. '
COQ_PLATFORM_VERSION_DESCRIPTION+='The 02/2021 and 09/2021 package picks are provided for compatibility and it is recommended to use the 11/2021 pick - or Coq 8.14.0.'

# The OCaml version to use for this pick (just the version number - options are elaborated in a platform dependent way)
COQ_PLATFORM_OCAML_VERSION='4.10.2'

###################### PACKAGE SELECTION #####################

PACKAGES=""

# - Comment out packages you do not want.
# - Packages which take a long time to build should be given last.
#   There is some evidence that they are built early then.
# - The picking is as much as possible identical to the 8.14 picking
#   discussed in https://github.com/coq/platform/issues/139,
#   except for choosing 8.13 instead of 8.14 packages where applicable.
#   Exceptions are noted in comments below.

########## BASE PACKAGES ##########

# The Coq compiler coqc and the Coq standard library
PACKAGES="${PACKAGES} PIN.coq.8.13.2"

########## IDE PACKAGES ##########

# GTK based IDE for Coq - alternatives are VSCoq and Proofgeneral for Emacs
if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[iIfFxX] ]]
then
  PACKAGES="${PACKAGES} coqide.8.13.2 lablgtk3.3.1.1"
fi

########## "FULL" COQ PLATFORM PACKAGES ##########

if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[fFxX] ]]
then

  # Standard library extensions
  PACKAGES="${PACKAGES} coq-bignums.8.13.0"
  PACKAGES="${PACKAGES} coq-ext-lib.0.11.4"
  PACKAGES="${PACKAGES} coq-stdpp.1.5.0"

  # General mathematics
  PACKAGES="${PACKAGES} coq-mathcomp-ssreflect.1.12.0"
  PACKAGES="${PACKAGES} coq-mathcomp-fingroup.1.12.0"
  PACKAGES="${PACKAGES} coq-mathcomp-algebra.1.12.0"
  PACKAGES="${PACKAGES} coq-mathcomp-solvable.1.12.0"
  PACKAGES="${PACKAGES} coq-mathcomp-field.1.12.0"
  PACKAGES="${PACKAGES} coq-mathcomp-character.1.12.0"
  PACKAGES="${PACKAGES} coq-mathcomp-bigenough.1.0.0"
  PACKAGES="${PACKAGES} coq-mathcomp-finmap.1.5.1"
  PACKAGES="${PACKAGES} coq-mathcomp-real-closed.1.1.2"
  PACKAGES="${PACKAGES} coq-mathcomp-zify.1.1.0+1.12+8.13"
  PACKAGES="${PACKAGES} coq-mathcomp-analysis.0.3.10"
  PACKAGES="${PACKAGES} coq-mathcomp-multinomials.1.5.4"
  PACKAGES="${PACKAGES} coq-coquelicot.3.2.0"

  # Number theory
  PACKAGES="${PACKAGES} coq-coqprime.1.0.6"

  # Numerical mathematics
  PACKAGES="${PACKAGES} coq-interval.4.3.0"
  PACKAGES="${PACKAGES} coq-flocq.3.4.2"
  PACKAGES="${PACKAGES} coq-gappa.1.5.0 gappa.1.4.0"

  # Constructive mathematics
  PACKAGES="${PACKAGES} coq-math-classes.8.13.0"
  PACKAGES="${PACKAGES} coq-corn.8.13.0"

  # Homotopy Type Theory (HoTT)
  PACKAGES="${PACKAGES} coq-hott.8.13"

  # Univalent Mathematics (UniMath)
  # Note: coq-unimath requires too much memory for 32 bit architectures
  if [ "${BITSIZE}" == "64" ]
  then
      case "$COQ_PLATFORM_UNIMATH" in
    [yY]) PACKAGES="${PACKAGES} coq-unimath.20210807" ;;
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_UNIMATH - aborting"; false ;;
    esac
  fi

  # Proof automation / generation / helpers
  PACKAGES="${PACKAGES} coq-equations.1.2.3+8.13"
  PACKAGES="${PACKAGES} coq-aac-tactics.8.13.1"
  PACKAGES="${PACKAGES} coq-unicoq.1.5+8.13"
  PACKAGES="${PACKAGES} coq-mtac2.1.4+8.13"
  PACKAGES="${PACKAGES} coq-elpi.1.11.1 elpi.1.13.7" # Note: coq-elpi 1.11.2 is >=8.14
  PACKAGES="${PACKAGES} coq-hierarchy-builder.1.2.0"
  if [[ "$OSTYPE" != cygwin ]]
  then
    # coq-quickchick does not work on Windows because it requires ocamlc and other tools
    PACKAGES="${PACKAGES} coq-quickchick.1.5.1"
  fi
  PACKAGES="${PACKAGES} coq-hammer-tactics.1.3.2+8.13"
  PACKAGES="${PACKAGES} coq-paramcoq.1.1.3+coq8.13"
  PACKAGES="${PACKAGES} coq-coqeal.1.0.6"
  PACKAGES="${PACKAGES} coq-libhyps.2.0.3"

  # Formal languages, compilers and code verification
  PACKAGES="${PACKAGES} coq-menhirlib.20210419 menhir.20210419"
  PACKAGES="${PACKAGES} coq-reglang.1.1.2"
  PACKAGES="${PACKAGES} coq-iris.3.4.0"
  PACKAGES="${PACKAGES} coq-iris-heap-lang.3.4.0"

  case "$COQ_PLATFORM_COMPCERT" in
    [yY]) PACKAGES="${PACKAGES} coq-compcert.3.9" ;;
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_COMPCERT - aborting"; false ;;
  esac

  case "$COQ_PLATFORM_VST" in
    [yY]) PACKAGES="${PACKAGES} coq-vst.2.8" ;;
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_VST - aborting"; false ;;
  esac

  # Code extraction
  PACKAGES="${PACKAGES} coq-simple-io.1.6.0"

  # Proof analysis and other tools
  PACKAGES="${PACKAGES} coq-dpdgraph.1.0+8.13"

fi

########## EXTENDED" COQ PLATFORM PACKAGES ##########

if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[xX] ]]
then

  # Proof automation / generation / helpers
  PACKAGES="${PACKAGES} coq-deriving.0.1.0"

  # Gallina extensions
  PACKAGES="${PACKAGES} coq-reduction-effects.0.1.3"
  PACKAGES="${PACKAGES} coq-record-update.0.3.0"

  # Communication with coqtop
  PACKAGES="${PACKAGES} coq-serapi.8.13.0+0.13.0"

fi
