#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Clear unwanted environment variables #####################

# Site settings for configure are likely never what we want since opam installs in
# its own folders. See discussion at
# https://coq.zulipchat.com/#narrow/stream/237977-Coq-users/topic/flocq.20installation.20error
# This is an issue e.g. on OpenSuse 15.2 Leap
unset CONFIG_SITE
