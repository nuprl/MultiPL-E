#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Select a python interpreter #####################

# Cygwin stopped to have a /usr/bin/python symlink, but some build scripts
# expect that there is *a* python.

if [[ "$OSTYPE" == cygwin ]]
then
  ln -s -f /usr/bin/python3 /usr/bin/python
fi

###################### Fix tar in 32 bit cygwin #####################

# Cygwin updated to tar 1.33 which is broken on Cygwin 32

if [[ "$OSTYPE" == cygwin ]]
then
  if [ "`uname -m`" = "i686" ]; then
    wget https://mirrors.kernel.org/sourceware/cygwin-archive/20221123/x86/release/tar/tar-1.32-2.tar.xz -O /tmp/tar-1.32-2.tar.xz
    tar xvf /tmp/tar-1.32-2.tar.xz -C /
  fi
fi

###################### Enable support for long paths #####################

if [[ "$OSTYPE" == cygwin ]]
then
  if [ ! -f /usr/x86_64-w64-mingw32/sys-root/mingw/lib/default-manifest.o.bak ]
  then
    echo "========== Enable long path support in Cygwin MinGW tool chain =========="
    # enable long paths in the cyhwin MinGW default manifest, so that all built executables support long paths
    cp /usr/x86_64-w64-mingw32/sys-root/mingw/lib/default-manifest.o /usr/x86_64-w64-mingw32/sys-root/mingw/lib/default-manifest.o.tmp
    x86_64-w64-mingw32-windres -F pe-x86-64 "${SCRIPTDIR}/windows/default-manifest.rc" -o "${SCRIPTDIR}/windows/default-manifest.o"
    cp "${SCRIPTDIR}/windows/default-manifest.o" /usr/x86_64-w64-mingw32/sys-root/mingw/lib/default-manifest.o
    cp /usr/x86_64-w64-mingw32/sys-root/mingw/lib/default-manifest.o.tmp /usr/x86_64-w64-mingw32/sys-root/mingw/lib/default-manifest.o.bak
    echo "Long path support enapled in Cygwin MinGW tool chain =========="
  fi
  # Enable long paths in the registry
  if ! ( REG QUERY 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem' /v LongPathsEnabled | grep -q 'LongPathsEnabled *REG_DWORD *0x1' )
  then
    echo "========== Enable long path support in registry =========="
    source shell_scripts/ask_long_path.sh
    if [ "$ANSWER" == "y" ]
    then
      cygstart --action=runas REG ADD 'HKLM\SYSTEM\CurrentControlSet\Control\FileSystem' /v LongPathsEnabled /t REG_DWORD /d 1 /f
      echo "Long path support enabled in registry =========="
    fi
  fi
fi
