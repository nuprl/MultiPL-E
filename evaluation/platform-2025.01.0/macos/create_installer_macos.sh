#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### CREATE MAC DMG INSTALLER ######################

# Options:
# -quick|-q   : disable BZIP compression of DMG + disable readme generation
# -install|-i : install package to /Application after creating it
# -otooldump  : provide the output of otool -L for all executables
# -sign       : sign the application (requires -signcert and -signid)
# -signcert=<prefix> : Path prefix or certificate <prefix>.cer/<prefix>.p12
# -signd=<id> : Signing identity in the certificate

###################### Preliminaries ######################

echo "##### Building Mac DMG installer #####"

###### Script safety ######

set -o nounset
set -o errexit
HERE="$(pwd)"

###### Parse command line ######

ZIPCOMPR='-format UDBZ' # bzip
CREATEREADME='Y'
CHECKOPAMLINKS='Y'
INSTALL='N'
OTOOLDUMP='N'
SIGN='N'
SIGN_CERT=''
SIGN_ID=''

for arg in "$@"
do
  case "${arg}" in
    -quick|-q) ZIPCOMPR='-format UDRO'; CHECKOPAMLINKS='N'; CREATEREADME='N' ;;
    -install|-i) INSTALL='Y' ;;
    -otooldump) OTOOLDUMP='Y' ;;
    -sign) SIGN='Y' ;;
    -signcert=*) SIGN_CERT="${arg#*=}" ;;
    -signid=*) SIGN_ID="${arg#*=}" ;;
    *) echo "ERROR: Unknown command line argument ${arg}!"; false;;
  esac
done

###### Common utilities ######

source shell_scripts/installer_utilities.sh
source shell_scripts/init_macos_set_depolyment_target.sh

##### Get the release and package pick of the Coq Platform #####

source shell_scripts/get_names_from_switch.sh

###### Check if required system utilities are installed #####

# Output some information in case finding macpack needs to be debugged
echo "python3 = '$(which python3)' '$(python3 --version)'"
echo "pip3 = '$(which pip3)' '$(pip3 --version)'"
pip3 show --files macpack

command -v python3 &> /dev/null || ( echo "You don't have python3 - which is starnge because macOS supplies one" ; exit 1)
command -v pip3 &> /dev/null || ( echo "You don't have pip3 - which is starnge because macOS supplies one" ; exit 1)
command -v gfind &> /dev/null || ( echo "Please install gfind (eg. sudo port install findutils)" ; exit 1)
command -v grealpath &> /dev/null || ( echo "Please install grealpath (eg. sudo port install coreutils)" ; exit 1)

# Determine the path to the macpack binary.
# We filter these two lines from the output of 'pip3 show macpack --files'
# Location: /Users/msoegtrop/Library/Python/3.8/lib/python/site-packages
#   ../../../bin/macpack
# and combine them with realpath to the path to the macpack binary
MACPACK="$(grealpath "$(pip3 show macpack | grep 'Location:' | cut -f 2 -d ' ')/$(pip3 show macpack --files | grep "^[^:]*macpack$" | sed 's/^ *//')")"
echo "MACKPACK = '$MACPACK'"

command -v "$MACPACK"  &> /dev/null || ( echo "Please install macpack (eg. pip3 macpack)" ; exit 1)

###### Create root folder #####

rm -rf macos_installer/
mkdir macos_installer/
cd macos_installer/
mkdir logs
LOGDIR=logs
> logs/macpack.log

###################### Coq and Coq Platform version ######################

echo "##### Coq Platform release = ${COQ_PLATFORM_RELEASE} version = ${COQ_PLATFORM_PACKAGE_PICK_POSTFIX} #####" 

###### Get the Coq sourcees from opam #####

# Get installed version of coq (otherwise opam source gives the latest)
coqpackagefull=$(opam list --installed-roots --short --columns=name,version coq | sed 's/ /./')
opam source --dir=coq/ ${coqpackagefull}

##### Get the version of Coq #####

COQ_VERSION=$(coqc --print-version | cut -d ' ' -f 1)

# The MacOS version needs to be purely numeric (no +beta)
# As it looks in current Coq releases beta versions are called .0
COQ_VERSION_MACOS=$COQ_VERSION

echo "##### Coq version = ${COQ_VERSION} (Mac app version=${COQ_VERSION_MACOS}) #####"

###################### Handle system packages ######################

##### MacPorts/Homebrew folder variables #####

set +e
PORTCMD="$(which port)"
set -e

if [ -z "${PORTCMD}" ]; then
  PKG_MANAGER=brew
  PKG_MANAGER_ROOT="$(brew --cellar)"
  # We want to transform e.g.
  # /opt/homebrew/Cellar/adwaita-icon-theme/46.0/share/icons/Adwaita/cursors/row-resize
  # to
  # share/icons/Adwaita/cursors/row-resize
  PKG_MANAGER_ROOT_STRIP="$(brew --cellar)/*/*/" # one * for the package name and one for its version
else
  PKG_MANAGER=port
  # If someone knows a better way to find out where port is installed, please let me know!
  PKG_MANAGER_ROOT="${PORTCMD%bin/port}"
  PKG_MANAGER_ROOT_STRIP="${PORTCMD%bin/port}"
fi
echo "PKG_MANAGER            = $PKG_MANAGER"
echo "PKG_MANAGER_ROOT       = $PKG_MANAGER_ROOT"
echo "PKG_MANAGER_ROOT_STRIP = $PKG_MANAGER_ROOT_STRIP"

##### Add files from a system package using package name and grep filter #####

# $1 = package name
# $2 = regexp filter (grep)
# Note:
# This function strips common prefixes in the destination.

function add_files_of_system_package {
  case $PKG_MANAGER in
  port)
    LIST_PKG_CONTENTS="port contents"
  ;;
  brew)
    LIST_PKG_CONTENTS="brew ls -v"
  ;;
  esac
  echo "Copying files from package $1 ..."
  echo "Number of files unfiltered $($LIST_PKG_CONTENTS "$1" | wc -l)"
  echo "Number of files filtered $($LIST_PKG_CONTENTS "$1" | grep "$2" | wc -l)"
  for file in $($LIST_PKG_CONTENTS "$1" | grep "$2" | sort -u)
  do
    relpath="${file#${PKG_MANAGER_ROOT_STRIP}}"
    reldir="${relpath%/*}"
    echo "add_files_of_system_package '$file' '$RSRC_ABSDIR' '$reldir'"
    mkdir -p "$RSRC_ABSDIR/$reldir"
    cp "$file" "$RSRC_ABSDIR/$reldir/"
  done
}

###################### Handle shared library dependencies ######################

# Find shared library dependencies and patch one binary using macpack
# $1 = full path to executable
# $2 = relative path from binary to "${RSRC_ABSDIR}" filder

function add_shared_library_dependencies {
  type="$(file -b $1)"
  if [ "${type}" == 'Mach-O 64-bit executable x86_64' ] || [ "${type}" == 'Mach-O 64-bit bundle x86_64' ] || [ "${type}" == 'Mach-O 64-bit executable arm64' ] || [ "${type}" == 'Mach-O 64-bit bundle arm64' ]
  then
    echo "Adding shared libraries for $1"
    "${MACPACK}" -v -d "$2"/lib/dylib $1 >> logs/macpack.log
  else
    echo "INFO: File '$1' with type '${type}' ignored in shared library analysis."
  fi
}

###################### Adding stuff manually ######################

##### Add a single file #####

# $1 = path prefix (absolute)
# $2 = relative path to $1 and ${RSRC_ABSDIR}
# $3 = file name

function add_single_file {
  echo "Copying single file $1/$2/$3"
  mkdir -p "${RSRC_ABSDIR}/$2"
  cp "$1/$2/$3" "${RSRC_ABSDIR}/$2/"
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
  true
}

function callback_package_secondary {
  true
}

# callback_dependency_primary
# callback_dependency_secondary
#   $1 = package which depends on $2
#   $2 = package on which $1 depends
#   Create the installer information for a primary (user visible) or secondary (not user visible) package dependency.
#   For installers which produce plain images, this is usually empty.

function callback_dependency_primary {
  true
}

function callback_dependency_secondary {
  true
}

# callback_file
#   $1 = package name
#   $2 = absolute path to source file (in .opam)
#   $3 = relative path (without name)
#   $4 = file name
#   Create the installer information for a single file.
#   This either copies the file or creates a file reference in an installer description file

function callback_file {
  mkdir -p "$RSRC_ABSDIR/$3"
  cp "$2" "$RSRC_ABSDIR/$3/"
}

###################### Create installer folder structure ######################


# Folder and image names

APP_NAME="Coq-Platform${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}.app"
DMG_NAME="Coq-Platform-release-${COQ_PLATFORM_RELEASE}-version${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}-MacOS-$(uname -m)"
APP_ABSDIR="_dmg/${APP_NAME}"
RSRC_ABSDIR="${APP_ABSDIR}/Contents/Resources"
BIN_ABSDIR="$RSRC_ABSDIR/bin"
LIB_ABSDIR="$RSRC_ABSDIR/lib"
DYNLIB_ABSDIR="$RSRC_ABSDIR/lib/dylib"

# Sub folders

mkdir -p ${APP_ABSDIR}
mkdir ${APP_ABSDIR}/Contents/
mkdir ${APP_ABSDIR}/Contents/MacOS  # The top level executable shown in launcher
mkdir -p ${RSRC_ABSDIR}             # Most files go here
mkdir -p ${DYNLIB_ABSDIR}           # System shared libraries





###################### TOP LEVEL FILE GATHERING ######################

##### System independent opam file copying #####

source "${HERE}"/shell_scripts/installer_create_tree.sh

##### Find system shared libraries the installed binaries depend on #####

echo '##### Copy system shared libraries #####'

##### Copy dynamically loaded (invisible for 'otool') shared libraries for GDK and GTK #####

PIXBUF_LOADER_ABSDIR="$RSRC_ABSDIR/lib/gdk-pixbuf-2.0/2.10.0/loaders"
mkdir -p "$PIXBUF_LOADER_ABSDIR"
PIXBUF_LOADER_RELDIR="$(grealpath --relative-to="$PIXBUF_LOADER_ABSDIR" "$RSRC_ABSDIR")"
for file in $(gdk-pixbuf-query-loaders | grep '/loaders/libpixbufloader-' | sed s/\"//g); do
  cp ${file} "$PIXBUF_LOADER_ABSDIR/"
done
# the paths are absolue and need to be adjustes to APP_NAME
(cd "$PIXBUF_LOADER_ABSDIR/"; \
 GDK_PIXBUF_MODULEDIR=. gdk-pixbuf-query-loaders | \
   sed "s|^\"\\./|\"/Applications/${APP_NAME}/Contents/Resources/lib/gdk-pixbuf-2.0/2.10.0/loaders/|" > loaders.cache)


IMMODULES_ABSDIR="$RSRC_ABSDIR/lib/gtk-3.0/3.0.0/immodules"
mkdir -p "$IMMODULES_ABSDIR"
IMMODULES_RELDIR="$(grealpath --relative-to="$IMMODULES_ABSDIR" "$RSRC_ABSDIR")"
for file in $(gtk-query-immodules-3.0 | grep /im- | sed s/\"//g); do
  cp ${file} "$IMMODULES_ABSDIR"
done
# the paths are absolue and need to be adjustes to APP_NAME
(cd "$IMMODULES_ABSDIR/"; \
 gtk-query-immodules-3.0 | \
   sed "s|^\".*/immodules/|\"/Applications/${APP_NAME}/Contents/Resources/lib/gtk-3.0/3.0.0/immodules/|" > immodules.cache)

for file in $(find "${BIN_ABSDIR}" -type f)
do
  add_shared_library_dependencies "${file}" ".."
done

for file in $(find "$PIXBUF_LOADER_ABSDIR" -type f)
do
  add_shared_library_dependencies "${file}" "$PIXBUF_LOADER_RELDIR"
done

for file in $(find "$IMMODULES_ABSDIR" -type f)
do
  add_shared_library_dependencies "${file}" "$IMMODULES_RELDIR"
done

##### Dynamic library debug output #####

if [ "$OTOOLDUMP" == 'Y' ]
then
  > logs/otool.log
  for file in $BIN_ABSDIR/* $DYNLIB_ABSDIR/* $PIXBUF_LOADER_ABSDIR/* $IMMODULES_ABSDIR/*
  do
    otool -L $file >> logs/otool.log
  done
fi

###### Add GTK resources #####

### Adwaita icon theme

add_files_of_system_package "adwaita-icon-theme"  \
"/\(16x16\|scalable\|symbolic\)/.*\("\
"actions/bookmark\|actions/document\|devices/drive\|actions/format-text\|actions/go\|actions/list\|"\
"actions/media\|actions/pan\|actions/process\|actions/system\|actions/window\|"\
"mimetypes/text\|mimetypes/inode\|mimetypes/application\|"\
"places/folder\|places/user\|status/dialog\|ui/pan\|"\
"legacy/document\|legacy/go\|legacy/process\|legacy/window\|legacy/system\)" \

make_theme_index "${RSRC_ABSDIR}/share/icons/Adwaita/"

### GTK compiled schemas

case $PKG_MANAGER in
  port)
    add_single_file "${PKG_MANAGER_ROOT}" "share/glib-2.0/schemas" "gschemas.compiled"
  ;;
  brew)
    oneschema="$(brew ls -v gtk+3 | grep /schemas/ | head -1)"
    schemapath="${oneschema%"${oneschema##*/schemas/}"}"
    gtkroot="${schemapath%/share/glib-2.0/schemas/}"
    echo "GTK schema paths: $oneschema, $schemapath, $gtkroot"
    glib-compile-schemas "$schemapath"
    add_single_file "${gtkroot}" "share/glib-2.0/schemas" "gschemas.compiled"
  ;;
esac

### GTK sourceview languag specs and styles (except coq itself)

# Not really everything is needed from this. These might suffice:
# language-specs/dev.lang
# language-specs/language.dtd
# language-specs/language.rng
# language-specs/language2.rng
# styles/classic.xml
# But since the complete set is compressed not that large, we add the complete set

add_files_of_system_package gtksourceview3 "/share/gtksourceview-3.0/"

##### Patch ocamlfind META files - the exists_if lines usually reference compile time libs

find "${LIB_ABSDIR}" -name "META" | xargs -n 1 sed -i".bak" 's/^ *exists_if.*//'
find "${LIB_ABSDIR}" -name "META.bak" -delete

###################### Create installer ######################

# Find CoqIDE folder

if [ -d coq/ide/coqide ]
then 
  coqidefolder=coq/ide/coqide
elif [ -d coq/ide  ]
then
  coqidefolder=coq/ide
else
  echo "ERROR: cannot find CoqIDE folder"
fi

# Create Info.plist file

sed -e "s/VERSION/${COQ_VERSION_MACOS}/g" ../macos/Info.plist.template > \
    ${APP_ABSDIR}/Contents/Info.plist

# Rename coqide to coqide.exe

mv ${BIN_ABSDIR}/coqide ${BIN_ABSDIR}/coqide.exe

# Create a wrapper executable to start CoqIDE with correct environmant
# Note: a shell script does not work - users can't access the documents folder then

cc ../macos/wrapper_bin_folder.c -o ${BIN_ABSDIR}/coqide
chmod a+x ${BIN_ABSDIR}/coqide

# Create a similar (but not identical!) wrapper in Contents/MacOS

cc ../macos/wrapper_macos_folder.c -o ${APP_ABSDIR}/Contents/MacOS/coqide
chmod a+x ${APP_ABSDIR}/Contents/MacOS/coqide

# Icons

cp ${coqidefolder}/MacOS/*.icns ${RSRC_ABSDIR}


###################### Create contents of the top level DMG folder  ######################

##### Link to the Applications folder #####

# Create a link to the 'Applications' folder, so that one can drag and drop the application there

ln -sf /Applications _dmg/Applications

##### coq-shell.command #####

sed "s/@@VERSION@@/${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}/" ../macos/coq-shell.command.template > _dmg/coq-shell${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}.command
chmod u+x _dmg/coq-shell${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}.command

##### coq-env.sh #####

sed "s/@@VERSION@@/${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}/" ../macos/coq-env.sh.template > ${BIN_ABSDIR}/coq-env.sh
chmod u+x ${BIN_ABSDIR}/coq-env.sh

##### Installation.html #####

sed "s/@@VERSION@@/${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}/" ../macos/Installation.html.template > _dmg/Installation.html

##### README.html #####

if [ "${CREATEREADME}" == "Y" ]
then
  echo '##### Create README.html #####'
  pushd ..
  maintainer_scripts/create_readme.sh -pick="${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}" -installed -html -output=macos_installer/_dmg/README.html -table=macos_installer/_dmg/Packages_and_licenses.csv
  popd
fi

###################### CREATE INSTALLER ######################

##### Sign application #####

if [ "${SIGN}" == "Y" ]
then
  echo '##### Sign application #####'

  echo "### Create temporary keychain ###"
  read  -n 1 -p "Please have the certificate password ready! - as soon as the dialog box opens, the system is locked!" waitinput
  KEYCHAIN=coq-macos-sign.keychain
  security create-keychain -p temporary_pw "${KEYCHAIN}"
  security unlock-keychain -p temporary_pw "${KEYCHAIN}"
  security set-keychain-settings -t 3600 -u "${KEYCHAIN}"
  security import "${SIGN_CERT}.cer" -k ~/Library/Keychains/"${KEYCHAIN}" -T /usr/bin/codesign
  security import "${SIGN_CERT}.p12" -k ~/Library/Keychains/"${KEYCHAIN}" -T /usr/bin/codesign
  security set-key-partition-list -S apple-tool:,apple: -s -k temporary_pw ~/Library/Keychains/"${KEYCHAIN}"

  echo "### Add temporary keychain to active keychains ###"
  ACTIVE_KEYCHAINS="$(security list-keychains -d user | sed -e s/\"//g)"
  echo ${ACTIVE_KEYCHAINS}
  security list-keychains -d user -s ${ACTIVE_KEYCHAINS} ~/Library/Keychains/"${KEYCHAIN}"
  security list-keychains

  echo "### Codesign ###"
  codesign -f -v --keychain ~/Library/Keychains/"${KEYCHAIN}" -s "${SIGN_ID}" "_dmg/${APP_NAME}"

  echo "### Remove temporary keychain from active keychains ###"
  security list-keychains -d user -s ${ACTIVE_KEYCHAINS}
  security list-keychains

  echo "### Delete temporary keychain ###"
  security delete-keychain "${KEYCHAIN}"
fi

##### Create DMG image from folder #####

echo '##### Create DMG image #####'

hdi_opts=(-volname "${DMG_NAME}"
          -srcfolder _dmg
          -ov # overwrite existing file
          ${ZIPCOMPR}
          # needed for backward compat since macOS 10.14 which uses APFS by default
          # see discussion in #11803
          -fs hfs+
         )

retry_command 10 3 hdiutil create "${hdi_opts[@]}" "${DMG_NAME}.dmg"

echo "##### Finished installer '${DMG_NAME}.dmg' #####"

##### Show warnings #####

if [ -f WARNINGS.log ]
then
  echo "##### WARNINGS for '${DMG_NAME}.dmg' #####"
  cat WARNINGS.log
  echo "##### END OF WARNINGS for '${DMG_NAME}.dmg' #####"
fi

##### Simply copy the folder over to the Applications folder #####

if [ "${INSTALL}" == 'Y' ]
then
  echo '##### Copying to /Applications folder #####'
  rm -rf "/Applications/${APP_NAME}"
  cp -R "${APP_ABSDIR}" '/Applications/'
fi
