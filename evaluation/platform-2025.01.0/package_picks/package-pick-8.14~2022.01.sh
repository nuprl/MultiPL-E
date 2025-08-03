#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020..2021 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### CONTROL VARIABLES #####################

# The two lines below are used by the package selection script
COQ_PLATFORM_VERSION_TITLE="Coq 8.14.1 (released Nov 2021) with the first package pick from Jan 2022"
COQ_PLATFORM_VERSION_SORTORDER=7

# The package list name is the final part of the opam switch name.
# It is usually either empty ot starts with ~.
# It might also be used for installer package names, but with ~ replaced by _
# It is also used for version specific file selections in the smoke test kit.
COQ_PLATFORM_PACKAGE_PICK_POSTFIX='~8.14~2022.01'

# The corresponding Coq development branch and tag
COQ_PLATFORM_COQ_BRANCH='v8.14'
COQ_PLATFORM_COQ_TAG='8.14.1'

# This controls if opam repositories for development packages are selected
COQ_PLATFORM_USE_DEV_REPOSITORY='N'

# This extended descriptions is used for readme files
COQ_PLATFORM_VERSION_DESCRIPTION='This version of Coq Platform 2025.01.0 includes Coq 8.14.1 from  11/2021. '
COQ_PLATFORM_VERSION_DESCRIPTION+='There are two package picks for Coq 8.14.1: the original from 01/2022, and an updated/extended one from 03/2022. '
COQ_PLATFORM_VERSION_DESCRIPTION+='This is the original package pick for Coq 8.14 from 01/2022. '

# The OCaml version to use for this pick (just the version number - options are elaborated in a platform dependent way)
COQ_PLATFORM_OCAML_VERSION='4.12.1'

###################### PACKAGE SELECTION #####################

PACKAGES=""

# - Comment out packages you do not want.
# - Packages which take a long time to build should be given last.
#   There is some evidence that they are built early then.
# - Versions ending with ~flex are identical to the opam package without the
#   ~flex extension, except that version restrictions have been relaxed.
# - The picking tracker issue is https://github.com/coq/platform/issues/139

########## BASE PACKAGES ##########

# The Coq compiler coqc and the Coq standard library
PACKAGES="${PACKAGES} PIN.coq.8.14.1"

########## IDE PACKAGES ##########

# GTK based IDE for Coq - alternatives are VSCoq and Proofgeneral for Emacs
if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[iIfFxX] ]]
then
PACKAGES="${PACKAGES} coqide.8.14.1 lablgtk3.3.1.1"
fi

########## "FULL" COQ PLATFORM PACKAGES ##########

if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[fFxX] ]]
then
  # Some dependencies for which we need specific versions
  PACKAGES="${PACKAGES} PIN.ppxlib.0.15.0"            # coq-serapi requires this old version

  # Standard library extensions
  PACKAGES="${PACKAGES} coq-bignums.8.14.0"           # this is tightly coupled to Coq, so there was no discussion on the version to pick
  PACKAGES="${PACKAGES} coq-ext-lib.0.11.4"           # pick confirmed https://github.com/coq-community/coq-ext-lib/issues/116
  PACKAGES="${PACKAGES} coq-stdpp.1.6.0"              # pick confirmed https://gitlab.mpi-sws.org/iris/stdpp/-/issues/119

  # General mathematics
  PACKAGES="${PACKAGES} coq-mathcomp-ssreflect.1.13.0" # pick confirmed https://github.com/math-comp/math-comp/issues/787
  PACKAGES="${PACKAGES} coq-mathcomp-fingroup.1.13.0"  # pick confirmed https://github.com/math-comp/math-comp/issues/787
  PACKAGES="${PACKAGES} coq-mathcomp-algebra.1.13.0"   # pick confirmed https://github.com/math-comp/math-comp/issues/787
  PACKAGES="${PACKAGES} coq-mathcomp-solvable.1.13.0"  # pick confirmed https://github.com/math-comp/math-comp/issues/787
  PACKAGES="${PACKAGES} coq-mathcomp-field.1.13.0"     # pick confirmed https://github.com/math-comp/math-comp/issues/787
  PACKAGES="${PACKAGES} coq-mathcomp-character.1.13.0" # pick confirmed https://github.com/math-comp/math-comp/issues/787
  PACKAGES="${PACKAGES} coq-mathcomp-bigenough.1.0.0"  # pick confirmed https://github.com/math-comp/bigenough/issues/4
  PACKAGES="${PACKAGES} coq-mathcomp-finmap.1.5.1"     # pick confirmed https://github.com/math-comp/finmap/issues/86
  PACKAGES="${PACKAGES} coq-mathcomp-real-closed.1.1.2" # pick confirmed https://github.com/math-comp/real-closed/issues/36
  PACKAGES="${PACKAGES} coq-mathcomp-zify.1.1.0+1.12+8.13" # pick confirmed https://github.com/coq/opam-coq-archive/pull/1838
  PACKAGES="${PACKAGES} coq-mathcomp-multinomials.1.5.4" # pick confirmed https://github.com/math-comp/multinomials/issues/46
  PACKAGES="${PACKAGES} coq-coquelicot.3.2.0"         # pick confirmed https://gitlab.inria.fr/coquelicot/coquelicot/-/issues/4

  # Number theory
  PACKAGES="${PACKAGES} coq-coqprime.1.1.1"           # pick confirmed https://github.com/thery/coqprime/issues/29 + PRs to make it work
  PACKAGES="${PACKAGES} coq-coqprime-generator.1.1.1" # pick confirmed https://github.com/thery/coqprime/issues/29 + PRs to make it work
  
  # Numerical mathematics
  PACKAGES="${PACKAGES} coq-flocq.3.4.2"              # pick confirmed https://gitlab.inria.fr/flocq/flocq/-/issues/17
  PACKAGES="${PACKAGES} coq-interval.4.3.0"           # pick confirmed https://gitlab.inria.fr/coqinterval/interval/-/issues/7
  PACKAGES="${PACKAGES} coq-gappa.1.5.0 gappa.1.4.0"  # pick confirmed https://gitlab.inria.fr/gappa/coq/-/issues/9

  # Constructive mathematics
  PACKAGES="${PACKAGES} coq-math-classes.8.13.0"      # pick confirmed https://github.com/coq-community/math-classes/issues/108
  PACKAGES="${PACKAGES} coq-corn.8.13.0"              # pick confirmed https://github.com/coq-community/corn/issues/163

  # Homotopy Type Theory (HoTT)
  PACKAGES="${PACKAGES} coq-hott.8.14"                # pick confirmed https://github.com/HoTT/HoTT/issues/1581

  # Univalent Mathematics (UniMath)
  # Note: coq-unimath requires too much memory for 32 bit architectures
  if [ "${BITSIZE}" == "64" ]
  then
    case "$COQ_PLATFORM_UNIMATH" in
    [yY]) PACKAGES="${PACKAGES} coq-unimath.20210807" ;; # pick confirmed https://github.com/UniMath/UniMath/issues/1398
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_UNIMATH - aborting"; false ;;
    esac
  fi 

  # Code extraction
  PACKAGES="${PACKAGES} coq-simple-io.1.6.0"          # pick confirmed https://github.com/Lysxia/coq-simple-io/issues/32

  # Proof automation / generation / helpers
  PACKAGES="${PACKAGES} coq-menhirlib.20211012 menhir.20211012" # pick confirmed https://gitlab.inria.fr/fpottier/menhir/-/issues/55
  PACKAGES="${PACKAGES} coq-equations.1.3+8.14"       # pick confirmed https://github.com/mattam82/Coq-Equations/issues/427
  PACKAGES="${PACKAGES} coq-aac-tactics.8.14.1"       # pick confirmed https://github.com/coq-community/aac-tactics/issues/87
  PACKAGES="${PACKAGES} coq-unicoq.1.6+8.14"          # pick confirmed https://github.com/unicoq/unicoq/issues/61
  PACKAGES="${PACKAGES} coq-mtac2.1.4+8.14"           # pick confirmed https://github.com/Mtac2/Mtac2/issues/344
  PACKAGES="${PACKAGES} coq-elpi.1.11.2 elpi.1.13.7"  # pick confirmed https://github.com/LPCIC/coq-elpi/issues/291
  PACKAGES="${PACKAGES} coq-hierarchy-builder.1.2.0"  # pick confirmed https://github.com/math-comp/hierarchy-builder/issues/265
  if [[ "$OSTYPE" != cygwin ]]
  then
    # coq-quickchick does not work on Windows because it requires ocamlc and other tools
    PACKAGES="${PACKAGES} coq-quickchick.1.6.0"         # pick confirmed https://github.com/QuickChick/QuickChick/issues/236
  fi
  PACKAGES="${PACKAGES} coq-hammer-tactics.1.3.2+8.14" # pick confirmed https://github.com/lukaszcz/coqhammer/issues/110
  if [[ "$OSTYPE" != cygwin ]]
  then
    # coq-hammer does not work on Windows because it heavily relies on fork
    PACKAGES="${PACKAGES} coq-hammer.1.3.2+8.14"        # pick confirmed https://github.com/lukaszcz/coqhammer/issues/110
    PACKAGES="${PACKAGES} eprover.2.6"                  # ATP for coq-hammer (latest version)
    PACKAGES="${PACKAGES} z3_tptp.4.13.0"               # ATP for coq-hammer (latest version)
  fi
  PACKAGES="${PACKAGES} coq-paramcoq.1.1.3+coq8.14"   # pick confirmed https://github.com/coq-community/paramcoq/issues/82
  PACKAGES="${PACKAGES} coq-coqeal.1.1.0"             # Pick confirmed https://github.com/coq-community/coqeal/issues/51
  PACKAGES="${PACKAGES} coq-libhyps.2.0.4"            # Pick confirmed https://github.com/Matafou/LibHyps/issues/6

  # General mathematics (which requires one of the above tools)
  PACKAGES="${PACKAGES} coq-mathcomp-analysis.0.3.11" # pick confirmed https://github.com/math-comp/analysis/issues/442

  # Formal languages, compilers and code verification
  PACKAGES="${PACKAGES} coq-reglang.1.1.2"            # pick confirmed https://github.com/coq-community/reglang/issues/34
  PACKAGES="${PACKAGES} coq-iris.3.5.0"               # pick confirmed https://gitlab.mpi-sws.org/iris/iris/-/issues/435
  PACKAGES="${PACKAGES} coq-iris-heap-lang.3.5.0"     # pick confirmed https://gitlab.mpi-sws.org/iris/iris/-/issues/435

  case "$COQ_PLATFORM_COMPCERT" in
    [yY]) PACKAGES="${PACKAGES} coq-compcert.3.9" ;;  # pick confirmed https://github.com/AbsInt/CompCert/issues/414
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_COMPCERT - aborting"; false ;;
  esac

  case "$COQ_PLATFORM_VST" in
    [yY]) PACKAGES="${PACKAGES} coq-vst.2.8" ;;       # pick confirmed https://github.com/PrincetonUniversity/VST/issues/520
    [nN]) true ;;
    *) echo "Illegal value for COQ_PLATFORM_VST - aborting"; false ;;
  esac

  # Proof analysis and other tools
  PACKAGES="${PACKAGES} coq-dpdgraph.1.0+8.14"        # pick confirmed https://github.com/coq-community/coq-dpdgraph/issues/88

fi

########## EXTENDED" COQ PLATFORM PACKAGES ##########

if  [[ "${COQ_PLATFORM_EXTENT}"  =~ ^[xX] ]]
then

  # Proof automation / generation / helpers
  PACKAGES="${PACKAGES} coq-deriving.0.1.0"           # pick confirmed https://github.com/arthuraa/deriving/issues/16

  # Gallina extensions
  PACKAGES="${PACKAGES} coq-reduction-effects.0.1.3"  # pick confirmed https://github.com/coq-community/reduction-effects/issues/12 (TODO: close)
  PACKAGES="${PACKAGES} coq-record-update.0.3.0"

  # Communication with coqtop
  PACKAGES="${PACKAGES} coq-serapi.8.14.0+0.14.0"     # this is tightly coupled to Coq, so there was no discussion on the version to pick

fi
