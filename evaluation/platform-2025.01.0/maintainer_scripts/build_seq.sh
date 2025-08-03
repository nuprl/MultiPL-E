#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### DOCUMENTATION #####################

# This script calls coq_platform_make.sh with standard options for a full sequential build.
# OPAMYES is set to 0, so that opam will ask before changing versions.
# This is useful for testing if a sequential build does not lead to version overrides.

# ATTENTION: this script is intended to be called from Coq Platform root (obe folder up)

OPAMYES=0 ./coq_platform_make.sh -extent=x -parallel=s -jobs=8 -compcert=y -large=i -switch=k
