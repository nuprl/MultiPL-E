#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

function print_usage {
cat <<"EOH"
coq_platform_make.sh [options]

Create a new opam switch and make and install the Coq Platform in this switch.

If an option is not given, the option is explained and asked for interactively.
Except for expert users this is the recommended way to run this script.

OPTIONS:
  -h, -help     Print this help message
  -extent=f     Setup opam and build full Coq Platform
  -extent=x     Setup opam and build extended Coq Platform
  -extent=b     Just setup opam and build Coq
  -extent=i     Just setup opam and build Coq+CoqIDE
  -large=i/e/s  Include/Exclude/Select large packages
  -pick=file/postfix Select the package pick / version file
  -parallel=p   Build several opam packages in parallel
  -parallel=s   Build opam packages sequentially
  -jobs=1..16   Number of make threads per package
  -compcert=y/n Build CompCert (NOT OPEN SOURCE, required for VST)
  -vst=y/n      Build Verified Software Toolchain (takes a while)
  -unimath=y/n  Build Univalent Mathematics library (takes a while)
  -fiatcrypto=y/n Build fiat-crypto and dependencies (takes a while)
  -switch=k     In case the opam switch already exists, keep it
  -switch=d     In case the opam switch already exists, delete it
  -set-switch=y Select the newly created opam switch
  -set-switch=n Do not select the newly created opam switch
  -dumplogs     Dump all log files in case of an error (intended for CI)
  -opamonly     Stop the script after installing opam
  -override-dev-pkg=name=url To override the url of a .dev package
EOH
}

for arg in "$@"
do
  case "$arg" in
    -help|-h)      print_usage; false;;
    -extent=*)     COQ_PLATFORM_EXTENT="${arg#*=}";;
    -packages=*)   COQ_PLATFORM_PACKAGE_PICK_NAME="${arg#*=}";;
    -pick=*)       COQ_PLATFORM_PACKAGE_PICK_NAME="${arg#*=}";;
    -parallel=*)   COQ_PLATFORM_PARALLEL="${arg#*=}";;
    -jobs=*)       COQ_PLATFORM_JOBS="${arg#*=}";;
    -large=*)      COQ_PLATFORM_LARGE="${arg#*=}";;
    -compcert=*)   COQ_PLATFORM_COMPCERT="${arg#*=}";;
    -vst=*)        COQ_PLATFORM_VST="${arg#*=}";;
    -unimath=*)    COQ_PLATFORM_UNIMATH="${arg#*=}";;
    -fiatcrypto=*) COQ_PLATFORM_FIATCRYPTO="${arg#*=}";;
    -switch=*)     COQ_PLATFORM_SWITCH="${arg#*=}";;
    -set-switch=*) COQ_PLATFORM_SET_SWITCH="${arg#*=}";;
    -dumplogs)     COQ_PLATFORM_DUMP_LOGS=y;;
    -opamonly)     COQ_PLATFORM_OPAM_ONLY=y;;
    -override-dev-pkg=*) COQ_PLATFORM_OVERRIDE_DEV="${COQ_PLATFORM_OVERRIDE_DEV} ${arg#*=}";;
    *) echo "ERROR: Unknown command line argument $arg!"; print_usage; false;;
  esac
done

# allow short form names for packages
if [ -n "${COQ_PLATFORM_PACKAGE_PICK_NAME:+x}" ]
then
  for prefix1 in "" "package_picks/"
  do
    for prefix2 in "" "package-pick-"
    do
      for postfix in "" ".sh"
      do
        testname="${prefix1}${prefix2}${COQ_PLATFORM_PACKAGE_PICK_NAME}${postfix}"
        if [ -f "${testname}" ]
        then
          COQ_PLATFORM_PACKAGE_PICK_FILE="${testname}"
        fi
      done
    done
  done
fi

check_value_enumeraton  "${COQ_PLATFORM_EXTENT:-__unset__}"    "[xfbi]" "-extent/COQ_PLATFORM_EXTENT"
check_value_enumeraton  "${COQ_PLATFORM_PARALLEL:-__unset__}"  "[ps]"  "-parallel/COQ_PLATFORM_PARALLEL"
check_value_range       "${COQ_PLATFORM_JOBS:-__unset__}"      1 16    "-jobs/COQ_PLATFORM_JOBS"
check_value_enumeraton  "${COQ_PLATFORM_LARGE:-__unset__}"     "[ies]" "-large/COQ_PLATFORM_LARGE"
check_value_enumeraton  "${COQ_PLATFORM_COMPCERT:-__unset__}"  "[yn]"  "-compcert/COQ_PLATFORM_COMPCERT"
check_value_enumeraton  "${COQ_PLATFORM_VST:-__unset__}"       "[yn]"  "-vst/COQ_PLATFORM_VST"
check_value_enumeraton  "${COQ_PLATFORM_UNIMATH:-__unset__}"   "[yn]"  "-unimath/COQ_PLATFORM_UNIMATH"
check_value_enumeraton  "${COQ_PLATFORM_FIATCRYPTO:-__unset__}" "[yn]" "-fiatcrypto/COQ_PLATFORM_FIATCRYPTO"
check_value_enumeraton  "${COQ_PLATFORM_SWITCH:-__unset__}"    "[kd]"  "-switch/COQ_PLATFORM_SWITCH"
check_value_enumeraton  "${COQ_PLATFORM_DUMP_LOGS:-__unset__}" "[yn]"  "-dumplogs/COQ_PLATFORM_DUMP_LOGS"
check_value_enumeraton  "${COQ_PLATFORM_OPAM_ONLY:-__unset__}" "[yn]"  "-opamonly/COQ_PLATFORM_OPAM_ONLY"
check_value_file_exists "${COQ_PLATFORM_PACKAGE_PICK_FILE:-__unset__}" "-packages/COQ_PLATFORM_PACKAGE_PICK_FILE"
