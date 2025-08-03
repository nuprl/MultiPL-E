#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### SET THE OPAM SWITCH NAME #####################

COQ_PLATFORM_SWITCH_NAME="${COQ_PLATFORM_SWITCH_NAME-"CP.${COQ_PLATFORM_RELEASE}${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}"}"
COQ_PLATFORM_REPO_NAME="CP.${COQ_PLATFORM_RELEASE}"
