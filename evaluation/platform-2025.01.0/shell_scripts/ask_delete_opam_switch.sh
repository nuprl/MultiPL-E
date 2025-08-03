#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### USER CHOICES #####################

# Delete opam switch

if command -v opam &> /dev/null && opam switch list --short | fgrep -qx "${COQ_PLATFORM_SWITCH_NAME}" &> /dev/null
then
	if [ -z "${COQ_PLATFORM_SWITCH:+x}" ]
	then
		cat <<-EOH
			================================ OPAM SWITCH =================================
			The Coq Platform creates the opam switch $COQ_PLATFORM_SWITCH_NAME.

			Apparently this switch already exists. It is recommended to delete the switch,
			so that you get a clean and well defined result.

			For incremental builds after a failure, e.g. cause of RAM size issues, it is
			no problem to keep the switch.
			================================ OPAM SWITCH =================================
			EOH
		ask_user_opt2_cancel "Shall the existing switch be kept (k) or deleted (d) ?" kK "keep" dD "delete"
		COQ_PLATFORM_SWITCH=$ANSWER
	fi

	if [ "$COQ_PLATFORM_SWITCH" == "d" ]
	then
		opam switch remove $COQ_PLATFORM_SWITCH_NAME
	fi
fi
