#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### CONFIGURE CYGWIN USER PROFILE FOR BUILDING COQ ######################

rcfile=~/.bash_profile
donefile=~/.bash_profile.updated

if [ ! -f $donefile ] ; then
  # to learn about `exec >> $file`, see https://www.tldp.org/LDP/abs/html/x17974.html
  exec 6>&1            # save stdout in file descripot 6
  exec >> $rcfile      # append stdout to $rcfile

  if [ "$1" != "" ] && [ "$1" != " " ]; then
    echo export http_proxy="http://$1"
    echo export https_proxy="http://$1"
    echo export ftp_proxy="http://$1"
  fi

  # A tightly controlled path helps to avoid issues
  # Note: the order is important: first have the cygwin binaries, then the mingw binaries in the path!
  # Note: /bin is mounted at /usr/bin and /lib at /usr/lib and it is common to use /usr/bin in PATH
  # See cat /proc/mounts
  echo "export PATH=/build/bin_special:/usr/local/bin:/usr/bin:/usr/$TARGET_ARCH/sys-root/mingw/bin:/cygdrive/c/Windows/system32:/cygdrive/c/Windows:/usr/$OTHER_ARCH-pc-cygwin/sys-root/usr/bin"

  # find and xargs complain if the environment is larger than (I think) 8k.
  # ORIGINAL_PATH (set by cygwin) can be a few k and exceed the limit
  echo unset ORIGINAL_PATH
  # Other installations of OCaml will mess up things
  echo unset OCAMLLIB

  # Set a marker that this is a cygwin intended for Coq Platform compilation
  echo export COQ_PLATFORM_CYGWIN_OK=Y

  # Set the opam root folder
  echo export OPAMROOT="'$(cygpath -aw /opam)'"
  echo export PLATFORMROOT="'$(cygpath -aw /platform)'"

  # Disable sandboxing in dune
	# On Cygwin it works better to disable dune sandboxing.
	# Sometimes virus checkers interfer with this, which makes the build unreliable.
	# See https://dune.readthedocs.io/en/stable/reference/config/sandboxing_preference.html
	# See https://dune.readthedocs.io/en/stable/concepts/sandboxing.html
  echo export DUNE_SANDBOX=none

  exec 1>&6 6>&-       # Restore stdout from file descriptor 6 and close file descriptor #6

  touch $donefile
fi

