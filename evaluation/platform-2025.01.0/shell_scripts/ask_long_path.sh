#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2024 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### USER CHOICES #####################

# Enable long paths in Windows

if [[ "${COQREGTESTING:-n}" == y ]]
then
  ANSWER=y
else
cat <<EOH
========================= WINDOWS LONG PATH SUPPORT =========================
By default on Windows the length of file paths is restricted to 259 character.
This is not sufficient for building Coq Platform, so long filename support
must be enabled.

This enablement is done in two steps:
- enable it in each executable built by Coq Platform
- enable it in the Windows registry

Both criteria must be fullfilled for an executable in order to enable long
path support. For this reason it is not dangerous to enable it in the
registry - applictions which do not support it do not enable it in their
manifests.

The setup has detected that long paths in not enabled in the registry.
If you want to enable it automatically now, select Y - otherwise C.
========================= WINDOWS LONG PATH SUPPORT =========================
EOH
ask_user_opt1_cancel "Enable long path support in registry (y)" yY "enable long paths in registry"
fi