#!/usr/bin/env bash

#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2025 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### HARD LINK DLLs FOR EXTERNAL USE OF BINARIES #####################

# This script hard links DLLs from there usual folder to the folder of the executable using them.
# This way the Windoiws loader finds the DLLs without setting PATH.
# When using any executable from within cygwin this is not required - the PATH is set properly.
# If executables are to be used outside of cygwin, this script must be run first.
# The main application for this is running vscoqtop from the VSCoq VSCode plugin.

# Note that this is not compatible with creating installers - this must be undone before creating an installer.
# The installer creation checks this automatically.

# If you add more executables, it should be safe to run it again.

##### Find shared library dependencies using ldd and create hard links to them to the folder of the executable #####

# $1 = name of executable (searched with using which)
# $2 = regexp filter (grep) for dependencies

# Note: there is no point in being fancy and collecting several occurances of the same DLL.
# If the DLL is already hard linked, it takes precedence and will be excluded by the
# regexp test for /usr/${COQ_ARCH}-w64-mingw32/sys-root/.

function add_shared_library_dependencies {
  if command -v "$1" &> /dev/null
  then
    echo "Linking shared libraries for $1 to bin folder"
    binpath="$(which "$1")"
    bindir="$(dirname "$binpath")"
    for file in $(ldd $binpath | cut -d ' ' -f 3 | grep "$2" | sort -u)
    do
      libbase="$(basename $file)"
      echo "ln -f $(cygpath -a "$file") $bindir/$libbase"
      echo "rm -f \"$bindir/$libbase\"" >> "$UNDO_FILE"
      ln -f "$(cygpath -a "$file")" "$bindir/$libbase"
    done
  fi
}

##### Main #####

COQ_ARCH=$(uname -m)
UNDO_FILE=/platform/windows/link_shared_libraries_undo.sh

if ! [ -f "$UNDO_FILE" ]
then
  echo "#!/usr/bin/env bash" > "$UNDO_FILE"
  echo "#This auto generated script removes the hard links created by /platform/windows/link_shared_libraries.sh" >> "$UNDO_FILE"
else
  # remove the rm -f \"$UNDO_FILE\" from the undo file - we don't want this to happen in the middle of the script
  sed -i "/$(basename $UNDO_FILE)/d" "$UNDO_FILE"
fi

# Note: we don't add coqide here - it needs more stuff than just DLLs.
# coqide should be called from the cygwin prompt or used via the installer.
# but it does make sense to add external tools like gappa

for binfile in coqc vscoqtop gappa pocklington
do
  add_shared_library_dependencies "$binfile" "/usr/${COQ_ARCH}-w64-mingw32/sys-root/" "shared_libraries.lst"
done

# Remove the undo file itself as last step in the undo file
echo "rm -f \"$UNDO_FILE\"" >> "$UNDO_FILE"
chmod u+x "$UNDO_FILE"
