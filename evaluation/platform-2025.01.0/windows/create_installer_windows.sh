#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### CREATE WINDOWS NSIS Installer ######################

###################### Preliminaries ######################

echo "##### Building Windows NSIS installer #####"

###### Script safety ######

set -o nounset
set -o errexit
HERE="$(pwd)"

###### Common utilities ######

source shell_scripts/installer_utilities.sh

##### Check if hard links for external use have been created #####

if [ -f "/platform/windows/link_shared_libraries_undo.sh" ]
then
  echo "WARNING: removing hard links for external use of this cygwin installation"
  echo "WARNING: this will break e.g. VSCoq"
  echo "To restore the links call /platform/windows/link_shared_libraries.sh"
  /platform/windows/link_shared_libraries_undo.sh
fi

##### Get the release and package pick of the Coq Platform #####

source shell_scripts/get_names_from_switch.sh

###### Create root folder #####

DIR_TARGET=windows_installer
rm -rf "$DIR_TARGET"
mkdir -p "$DIR_TARGET"
LOGDIR="$DIR_TARGET/logs" 
mkdir -p "${LOGDIR}"
MODDIR="$DIR_TARGET/mods" 
mkdir -p "${MODDIR}"
MODDIR_WIN="$(cygpath -aw "${MODDIR}")"

###################### Coq and Coq Platform version ######################

echo "##### Coq Platform release = ${COQ_PLATFORM_RELEASE} version = ${COQ_PLATFORM_PACKAGE_PICK_POSTFIX} #####" 



###################### Handle system packages ######################

##### Add files from a system package using package name and grep filter #####

# $1 = package name
# $2 = regexp filter (grep)
# $3 = file list file name
# $4 = path to copy files to in addition (for further analysis), optional
# Note:
# This function strips common prefixes in the destination.
# Currently only one prefix is stripped:
#   /usr/${COQ_ARCH}-w64-mingw32/sys-root/mingw/
# In case there are additional prefixes to skip add them here.
# It doesn't make much sense to have a prefix parameter, because one
# package could have several prefixes

function add_files_of_system_package {
  if [ -n "${4:-}" ]
  then
    mkdir -p "$4"
  fi
  if [ -f "$DIR_TARGET/$3.nsh" ]
  then
    local hasfiles=false
    echo "Adding files from cygwin package $1 ($2; $3; ${4:-})"
    prevfolder="--none--"
    for file in $(cygcheck -l "$1" | grep "$2" | sort -u)
    do
      relpath="${file#/usr/${COQ_ARCH}-w64-mingw32/sys-root/mingw/}"
      relfolder="${relpath%/*}"
      if [ "$relfolder" != "$prevfolder" ]
      then
        echo 'SetOutPath $INSTDIR\'"$(cygpath -w "$relfolder")"
        prevfolder="$relfolder"
      fi
      echo -n "FILE "; cygpath -aw "$file";
      if [ -n "${4:-}" ]
      then
        mkdir -p "$4/$relfolder"
        ln "$file" "$4/$relpath"
      fi
      hasfiles=true
    done >> "$DIR_TARGET/$3.nsh"
    if ! $hasfiles
    then
      echo "ERROR: system package $1 is invalid"
      exit 1
    fi
  else
    echo "INFO: add_files_of_system_package: target $DIR_TARGET/$3.nsh does not exist"
  fi
}

###################### Handle shared library dependencies ######################

# Find shared library dependencies using ldd to find them
# $1 = full path to executable
# $2 = regexp filter (grep)
# $3 = file list file name

function add_shared_library_dependencies {
  if [ -f "$DIR_TARGET/$3.nsh" ]
  then
    echo "Adding shared libraries for $1"
    echo 'SetOutPath $INSTDIR\bin' >> "$DIR_TARGET/$3.nsh"
    for file in $(ldd $(which "$1") | cut -d ' ' -f 3 | grep "$2" | sort -u)
    do
      echo -n "FILE "; cygpath -aw "$file";
    done >> "$DIR_TARGET/$3.nsh"
  fi
}

###################### Adding stuff manually ######################

##### Add a folder recursively #####

# $1 = path prefix (absolute cygwin format, must end with /)
# $2 = relative path to $1 (must not start with /)
# $3 file list file name

function add_folder_recursively {
  if [ -f "$DIR_TARGET/$3.nsh" ]
  then
    echo "Adding files from folder $1/$2"
    prevfolder="--none--"
    for file in $(find $1$2 -type f | sort -u)
    do
      relpath="${file#$1}"
      relfolder="${relpath%/*}"
      if [ "$relfolder" != "$prevfolder" ]
      then
        echo 'SetOutPath $INSTDIR\'"$(cygpath -w "$relfolder")"
        prevfolder="$relfolder"
      fi
      echo -n "FILE "; cygpath -aw "$file";
    done >> "$DIR_TARGET/$3.nsh"
  fi
}

##### Add a single file #####

# $1 = path prefix (absolute cygwin format)
# $2 = relative path to $1 in installation (including filename)
# $3 file list file name

function add_single_file {
  if [ -f "$DIR_TARGET/$3.nsh" ]
  then
    echo 'SetOutPath $INSTDIR\'"$(dirname "$(cygpath -w "$2")")" >> "$DIR_TARGET/$3.nsh"
    echo "FILE $(cygpath -aw "$1$2")" >> "$DIR_TARGET/$3.nsh"
  fi
}

###################### Callback functions for package analyzer ######################

# callback_package_primary
# callback_package_secondary
#   $1 = package name
#   $2 = dependency level
#   $3 = file inclusion list RE
#   $4 = file exclusion list RE
#   Create the installer information for a primary (user visible) or secondary (not user visible) package.
#   For installers which produce plain images, this is usually empty.

function callback_package_primary {
  # This is a user visible package which can be explicitly selected or deselected
  echo "Section \"$1\" Sec_${1//-/_}" >> "$FILE_SEC_VISIBLE"
  echo 'SetOutPath "$INSTDIR\"' >> "$FILE_SEC_VISIBLE"
  reldir_win_prev=''
  echo "!include \"files_$1.nsh\"" >> "$FILE_SEC_VISIBLE"
  echo "SectionEnd" >> "$FILE_SEC_VISIBLE"

  descr="$(opam show --field=synopsis "$1")"
  descr="${descr//\"/\'}"
  echo 'LangString DESC_'"${1//-/_}"' ${LANG_ENGLISH} "'"$descr"'"' >> "$FILE_STRINGS"
  echo '!insertmacro MUI_DESCRIPTION_TEXT ${Sec_'"${1//-/_}"'} $(DESC_'"${1//-/_}"')' >> "$FILE_SEC_DESCRIPTIONS"

  echo "# File list for $1 including $3 and excluding $4" > "$DIR_TARGET"/files_$1.nsh
}

function callback_package_secondary {
  # This is a hidden section which is selected automatically by dependency
  echo "Section \"-$1\" Sec_${1//-/_}" >> "$FILE_SEC_HIDDEN"
  echo 'SetOutPath "$INSTDIR\"' >> "$FILE_SEC_HIDDEN"
  reldir_win_prev=''
  echo "!include \"files_$1.nsh\"" >> "$FILE_SEC_HIDDEN"
  echo "SectionEnd" >> "$FILE_SEC_HIDDEN"

  echo "# File list for $1 including $3 and excluding $4" > "$DIR_TARGET"/files_$1.nsh
}

# callback_dependency_primary
# callback_dependency_secondary
#   $1 = package which depends on $2
#   $2 = package on which $1 depends
#   Create the installer information for a primary (user visible) or secondary (not user visible) package dependency.
#   For installers which produce plain images, this is usually empty.

function callback_dependency_primary {
  # This is a user visible package which can be explicitly selected or deselected
  echo "${1//-/_}" "${2//-/_}" >> "$FILE_DEP_VISIBLE.in"
}

function callback_dependency_secondary {
  # This is a hidden dependency package
  echo "${1//-/_}" "${2//-/_}" >> "$FILE_DEP_HIDDEN.in"
}

# callback_file
#   $1 = package name
#   $2 = absolute path to source file (in .opam)
#   $3 = relative path (without name)
#   $4 = file name
#   Create the installer information for a single file.
#   This either copies the file or creates a file reference in an installer description file

function callback_file {
  file_win="${2//\//\\}"
  reldir_win="${3//\//\\}"

  if [ "$reldir_win" != "$reldir_win_prev" ]
  then
    echo SetOutPath "\$INSTDIR$reldir_win" >> "$DIR_TARGET"/files_$1.nsh
    reldir_win_prev="$reldir_win"
  fi
  if [ "$4" == "META" ]
  then
    # Copy a patched version to $MODDIR and use this copy
    mkdir -p "$MODDIR/$3"
    sed 's/^ *exists_if.*//' "$2" > "$MODDIR/$3/$4"
    echo FILE "$MODDIR_WIN\\$reldir_win\\$4" >> "$DIR_TARGET"/files_$1.nsh
  else
    echo FILE "$file_win" >> "$DIR_TARGET"/files_$1.nsh
  fi
}

###################### Create installer folder structure ######################

# The architecture
COQ_ARCH=$(uname -m)

# The folder for the windows installer stuff

# The NSIS include file for the visible installer sections
FILE_SEC_VISIBLE="$DIR_TARGET"/sections_visible.nsh
> "$FILE_SEC_VISIBLE"

# The NSIS include file for the hidden installer sections
FILE_SEC_HIDDEN="$DIR_TARGET"/sections_hidden.nsh
> "$FILE_SEC_HIDDEN"

# The NSIS include file for dependencies between user visible packages
FILE_DEP_VISIBLE="$DIR_TARGET"/dependencies_visible.nsh
> "$FILE_DEP_VISIBLE"

# The NSIS include file for dependencies between hidden packages
FILE_DEP_HIDDEN="$DIR_TARGET"/dependencies_hidden.nsh
> "$FILE_DEP_HIDDEN"

# a NSIS include file, which resets all hidden dependency selections
FILE_RES_HIDDEN="$DIR_TARGET"/reset_hidden.nsh
> $FILE_RES_HIDDEN

# a NSIS include file which selects dependents of visible sections
FILE_VISIBLE_SEL="$DIR_TARGET"/dependencies_visible_selection.nsh

# a NSIS include file which deselects dependents of visible sections
FILE_VISIBLE_DESEL="$DIR_TARGET"/dependencies_visible_deselection.nsh

# The NSIS include file for strings, e.g. section descriptions
FILE_STRINGS="$DIR_TARGET"/strings.nsh
> "$FILE_STRINGS"

# The NSIS include file for section descriptions
FILE_SEC_DESCRIPTIONS="$DIR_TARGET"/section_descriptions.nsh
> "$FILE_SEC_DESCRIPTIONS"


###################### TOP LEVEL FILE GATHERING ######################

##### System independent opam file copying #####

OPAM_PACKAGE_EXCLUSION_OVERRIDE_RE="conf-gtk3|conf-gtksourceview3|conf-adwaita-icon-theme"
source "${HERE}"/shell_scripts/installer_create_tree.sh

##### Find system shared libraries the installed binaries depend on #####

echo '##### Copy system shared libraries #####'

##### Create empty GDK pixbuf loaders cache file #####

# Note: CoqIDE does not need pixbuf loaders (PNG is integratd) - but we need an empty loaders.cache file in the right (GDK version dependent) place
PIXBUF_LOADER_CACHE_RELPATH="$(cygcheck -l mingw64-${COQ_ARCH}-gdk-pixbuf2.0 | grep loaders.cache | sed 's|.*/mingw/||')"
mkdir -p "${MODDIR}/${PIXBUF_LOADER_CACHE_RELPATH%/*}" 
touch "${MODDIR}/${PIXBUF_LOADER_CACHE_RELPATH}"
add_single_file "${MODDIR}/" "${PIXBUF_LOADER_CACHE_RELPATH}" "files_conf-gtk3"

###### Add system DLLs to some packages #####

add_shared_library_dependencies "coqc" "/usr/${COQ_ARCH}-w64-mingw32/sys-root/" "files_coq"
add_shared_library_dependencies "coqide" "/usr/${COQ_ARCH}-w64-mingw32/sys-root/" "files_coqide"
add_shared_library_dependencies "gappa" "/usr/${COQ_ARCH}-w64-mingw32/sys-root/" "files_gappa"

###### Add GTK resources #####

### Adwaita icon theme

add_files_of_system_package "mingw64-${COQ_ARCH}-adwaita-icon-theme"  \
"/\(16x16\|22x22\|32x32\|48x48\)/.*\("\
"actions/bookmark\|actions/document\|devices/drive\|actions/format-text\|actions/go\|actions/list\|"\
"actions/media\|actions/pan\|actions/process\|actions/system\|actions/window\|"\
"mimetypes/text\|mimetypes/inode\|mimetypes/application\|"\
"places/folder\|places/user\|status/dialog\|ui/pan\|"\
"legacy/document\|legacy/go\|legacy/process\|legacy/window\|legacy/system\)" \
"files_conf-adwaita-icon-theme"

#"${MODDIR}/share/icons/Adwaita/"
# make_theme_index "${MODDIR}/share/icons/Adwaita/"

### GTK compiled schemas

add_single_file "/usr/${COQ_ARCH}-w64-mingw32/sys-root/mingw/" "share/glib-2.0/schemas/gschemas.compiled" "files_dep-glib-compiled-schemas"

### GTK sourceview languag specs and styles (except coq itself)

# Not really everything is needed from this. These might suffice:
# language-specs/dev.lang
# language-specs/language.dtd
# language-specs/language.rng
# language-specs/language2.rng
# styles/classic.xml
# But since the complete set is compressed not that large, we add the complete set

add_folder_recursively "/usr/${COQ_ARCH}-w64-mingw32/sys-root/mingw/" "share/gtksourceview-3.0" "files_dep-gtksourceview3"

### coq-shell.bat ###

add_single_file "windows/" "coq-shell.bat" "files_coq"
add_single_file "windows/" "coq-shell.ico" "files_coq"
add_single_file "$DIR_TARGET/files/" "bin/coq.ico" "files_coqide"

###################### Create installer ######################

###### Function for sorting a dependency list by level #####

# Sort a dependecy file by dependency level (leaves last)
# $1 input file name
# $2 check macro output file name
# $3 NSIS Check macro name
# $4 reset macro output file name
# $5 sort options (e.g. -r for reverse)

function sort_dependencies
{
  cat  "$1" | awk '
    BEGIN{n=0}
    { DepSrc[n]=$1; DepDest[n]=$2; n++; IsSrc[$1]=1; IsDest[$2]=1; }
    END{
      PROCINFO["sorted_in"] = "@ind_str_asc";
      for (pkg in IsDest) {
        if(!IsSrc[pkg]) DestLvl[pkg]=1
      }
      fnd=1;
      for(lvl=1; fnd; lvl++) {
        fnd=0;
        for (i=0; i<n; i++) {
          if (DestLvl[DepDest[i]]==lvl) {
            DestLvl[DepSrc[i]]=lvl+1;
            DepLvl[i]=lvl;
            fnd=1;
          }
        }
        if(lvl>=50) {
          print "The dependency tree has more than 50 levels - there are likely cyclic dependencies";
          exit 1;
        }
      }
      for (pkg in IsDest) {
        print "${UnselectSection}", "${Sec_"pkg"}" >> "'"$4"'"
      }
      for (i=0; i<n; i++) {
        print DepLvl[i], DepSrc[i], DepDest[i];
      }
    }' | sort $5 -n | awk "
    { print \"\${$3}\", \"\${Sec_\"\$2\"}\", \"\${Sec_\"\$3\"}\", \"'\"\$2\"'\", \"'\"\$3\"'\"; }" > "$2"
}

###### Create dependency reset/selection/deselection include files #####

sort_dependencies "$FILE_DEP_HIDDEN.in" "$FILE_DEP_HIDDEN" 'CheckHiddenSectionDependency' "$FILE_RES_HIDDEN" -r
sort_dependencies "$FILE_DEP_VISIBLE.in" "$FILE_VISIBLE_SEL" 'SectionVisibleSelect' /dev/null -r
sort_dependencies "$FILE_DEP_VISIBLE.in" "$FILE_VISIBLE_DESEL" 'SectionVisibleDeSelect' /dev/null ""

###### Create the NSIS installer #####

cd $DIR_TARGET

# NSIS 2.51 has the bug that $0 is not set in .onSelChange, so use the latest version 3.06.1

wget --no-clobber --progress=dot:giga https://github.com/coq/prerequisites/releases/download/2021.02.2/nsis-3.06.1.zip
unzip -o nsis-3.06.1
# Unzipping this results in very strange permissions - fix this
chmod -R 700 nsis-3.06.1

# Enable the below lines to enable logging
# wget --no-clobber --progress=dot:giga http://downloads.sourceforge.net/project/nsis/NSIS%203/3.06.1/nsis-3.06.1-log.zip
# unzip -o nsis-3.06.1-log.zip -d nsis-3.06.1-log
# cp -rf nsis-3.06.1-log/* nsis-3.06.1

NSIS=$(pwd)/nsis-3.06.1/makensis.exe

chmod u+x "$NSIS"
cp ../windows/*.ns* .

# Extract some data from sources
mkdir source
for package in coq coqide coq-compcert coq-vst coq-vst-32
do
  if opam list --installed --silent ${package}
  then
  packagefull=$(opam list --installed-roots --short --columns=name,version ${package} | sed 's/ /./')
    opam source --dir=source/${package} ${packagefull}
  fi
done

# Get VST variant
if opam list --installed --silent coq-vst
then
  vst_pkg=coq-vst
elif opam list --installed --silent coq-vst-32
then
  vst_pkg=coq-vst-32
else
  vst_pkg=""
fi

# Check VST license
if [ -n "$vst_pkg" ]
then
  vst_pkg_full=$(opam list --installed-roots --short --columns=name,version ${vst_pkg} | sed 's/ /./')
  vst_license="$(opam show $vst_pkg_full -f license:)"
  if [ "${vst_license}" == '"BSD-2-Clause"' ]
  then
    NSIS_VST_CHECK=""
    echo "VST license is ${vst_license} => no check required"
  else
    NSIS_VST_CHECK="-DVST_CHECK_LICENSE"
    echo "VST license is ${vst_license} => check required"
  fi
else
  NSIS_VST_CHECK=""
fi

# Copy some files from source
cp source/coq/LICENSE .
cp source/coqide/ide/coqide/coq.ico .
mkdir -p files/bin
cp source/coqide/ide/coqide/coq.ico files/bin/
cp source/coq-compcert/LICENSE coq-compcert-license.txt
if [ -n "$NSIS_VST_CHECK" ]
then
  cp source/$vst_pkg/LICENSE coq-vst-license.txt
fi
rm -rf source

echo "==============================================================================="
echo "NOTE: The creation of the installer can take 10 minutes"
echo "(cause of the CPU heavy but effective LZMA compression used)"
echo "==============================================================================="

"$NSIS" -DRELEASE="${COQ_PLATFORM_RELEASE}" -DVERSION="${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}" -DARCH="$COQ_ARCH" $NSIS_VST_CHECK Coq.nsi

echo "==============================================================================="
echo "Created installer:"
echo "$DIR_TARGET/Coq-Platform-release-${COQ_PLATFORM_RELEASE}-version${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}-Windows-${COQ_ARCH}.exe"
echo "==============================================================================="
cd ..
