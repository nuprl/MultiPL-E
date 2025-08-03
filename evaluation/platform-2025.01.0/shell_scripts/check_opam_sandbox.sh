#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### SANITY OPAM SANDBOX SCRIPT #####################

if [[ "$OSTYPE" == darwin* ]]
then

	# Check if opam sandbox script is current
	if !  grep "allow network" "$(opam var root)/opam-init/hooks/sandbox.sh"
	then
		cat <<-"EOH"
			======================== Outdated opam sandbox script ========================
			opam has a sandbox mechanism to ensure that build scripts do not modify
			files outside of their build tree. While your opam version is fine, the
			version of your sandbox script is outdated. The likely root cause of this
			is that some time in the past you updated opam without a call to:

			  opam init --reinit --no-setup
			
			This opam call updates your .opam folder to the current version of opam.
			Shall this script now run "opam init --reinit --no-setup" to fix this?
			======================== Outdated opam sandbox script ========================
			EOH
		ask_user_opt1_cancel "Enter (y) to run 'opam init --reinit --no-setup' now or (c) to cancel" yY yes
		if [ "$ANSWER" == "y" ]
		then
			opam init --reinit --no-setup
		fi
	fi

	# This is required if the macOS system python is used, because it defaults the python cache folder to
	# $HOME/Library/Caches/com.apple.python/
	# Which is outside of the sandbox
	export PYTHONPYCACHEPREFIX="__pycache__"
fi
