#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2021 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Get platform name info from an opam switch #####################

# First get COQ_PLATFORM_SWITCH_NAME with the COQ_PLATFORM_PACKAGE_PICK_POSTFIX part being empty
COQ_PLATFORM_PACKAGE_PICK_POSTFIX=''
source package_picks/coq_platform_release.sh
source package_picks/coq_platform_switch_name.sh

# Then get the current full switch name and remove the partial name from it, so that the extension remains
current_switch="$(opam switch show)"
COQ_PLATFORM_PACKAGE_PICK_POSTFIX="${current_switch/${COQ_PLATFORM_SWITCH_NAME}/}"

# Now include coq_platform_switch_name again to get the full names
source package_picks/coq_platform_switch_name.sh
