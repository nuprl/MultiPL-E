#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### CLOSING REMARKS #####################

cat <<EOH
============================== CLOSING REMARKS ===============================
The Coq Platform installation script finished successfully!

A new opam switch with name "${COQ_PLATFORM_SWITCH_NAME}" has been created.
You can list all available opam switches with "opam switch".
You can change the default opam switch to the newly created switch with:

    opam switch ${COQ_PLATFORM_SWITCH_NAME}
    eval \$(opam env)

Or to just use an opam switch in the current shell (not setting the default):

    eval \$(opam config env --set-switch --switch ${COQ_PLATFORM_SWITCH_NAME})

You can list the packages in the currently selected opam switch with:

    opam list

You can install additional packages with:

    opam install <package>

There is a dedicated Zulip stream for the Coq Platform:

https://coq.zulipchat.com/#narrow/stream/250632-Coq-Platform.20devs.20.26.20users
============================== CLOSING REMARKS ===============================
EOH

# Ask to set switch if the default switch (when OPAMSWITCH="") does not match
OPAMSWITCH=""
if [ ! "$(opam switch show 2>/dev/null)" == "${COQ_PLATFORM_SWITCH_NAME}" ]
then
  if [ -z "${COQ_PLATFORM_SET_SWITCH:+x}" ]
  then
    ask_user_opt2_cancel "Set the new opam switch as default now (y/n)?" yY "switch" nN "don't"
    COQ_PLATFORM_SET_SWITCH=$ANSWER
  fi

  if [ "${COQ_PLATFORM_SET_SWITCH:-y}" == "y" ]
  then
    opam switch "${COQ_PLATFORM_SWITCH_NAME}"
    eval $(opam env)
    echo "Opam switch ${COQ_PLATFORM_SWITCH_NAME} set as default!"
  fi
fi
