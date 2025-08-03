###################### COPYRIGHT/COPYLEFT ######################

# (C) 2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Create a file tree for an installer #####################

# This is used by the Windows, Mac and Snap installer generators.
# This file is intended to be sourced - not called directly.

# The caller should provide the following definitions
# LOGDIR = folder for log files

# The caller should provide the following callback shell functions:

# callback_package_primary
# callback_package_secondary
#   $1 = package name
#   $2 = dependency level
#   $3 = file inclusion_list RE
#   $4 = file exclusion_list RE
#   Create the installer information for a primary (user visible) or secondary (not user visible) package.
#   For installers which produce plain images, this is usually empty.

# callback_dependency_primary
# callback_dependency_secondary
#   $1 = package which depends on $2
#   $2 = package on which $1 depends
#   Create the installer information for a primary (user visible) or secondary (not user visible) package dependency.
#   For installers which produce plain images, this is usually empty.

# callback_file
#   $1 = package name
#   $2 = absolute path to source file (in .opam)
#   $3 = relative path (without name)
#   $4 = file name
#   Create the installer information for a single file.
#   This either copies the file or creates a file reference in an installer description file

######################

###### Define some variables #####

# The opam prefix - stripped from absolute paths to create relative paths
OPAM_PREFIX="$(opam conf var prefix)"

###### Get filtered (newline separated) list of explicitly installed packages #####

PRIMARY_PACKAGES="$(opam list --installed-roots --short --columns=name | grep -v '^ocaml\|^opam\|^depext\|^conf\|^lablgtk\|^coq-quickchick')"

###### Associative array with package name -> file filter (regexp pattern) #####

# Default inclusion list
OPAM_FILE_INCLUSION_LIST_DEFAULT="."

# Default exclusion list
OPAM_FILE_EXCLUSION_LIST_DEFAULT="(\.byte|\.byte\.exe|\.cm[aioxt]|\.cmxa|\.cmti|\.[oah]|\.glob|\.ml|\.mli|opam)$"

# NOTE: we take all files which are included and not excluded

declare -A OPAM_FILE_INCLUSION_LIST
declare -A OPAM_FILE_EXCLUSION_LIST

OPAM_FILE_INCLUSION_LIST[lablgtk3]="stubs.dll$" # we keep only the stublib DLL, the rest is linked in coqide
OPAM_FILE_INCLUSION_LIST[lablgtk3-sourceview3]="stubs.dll$" # we keep only the stublib DLL, the rest is linked in coqide
OPAM_FILE_INCLUSION_LIST[cairo2]="stubs.dll$" # we keep only the stublib DLL, the rest is linked in coqide

# For compcert we need .h and .a files
OPAM_FILE_EXCLUSION_LIST[coq-compcert]="(\.byte|\.byte\.exe|\.cm[aioxt]|\.cmxa|\.cmti|\.[o]|\.glob|\.ml|\.mli|opam)$"
OPAM_FILE_EXCLUSION_LIST[coq-compcert-32]=OPAM_FILE_EXCLUSION_LIST[coq-compcert]

###### Lits of packages to ignore #####

# Note: it is more efficient to ignore a package than to exclude / not include all files in it

# Explicit list of ignored packages

# This excludes the OCaml build infrastructure
# Since QuickChick requires OCamlc at run time, it is also excluded

OPAM_PACKAGE_EXCLUSION_LIST="ocaml"$'\n'"ocaml-variants"$'\n'"ocaml-base-compiler"$'\n'"ocaml-compiler-libs"$'\n'"ocaml-config"$'\n'"ocaml-secondary-compiler"$'\n'"ocamlfind-secondary"$'\n'"coq-quickchick"
OPAM_PACKAGE_EXCLUSION_LIST="${OPAM_PACKAGE_EXCLUSION_LIST}"$'\n'"csexp"$'\n'"ocamlbuild"$'\n'"cppo"

# Regexp for packages to ignore

OPAM_PACKAGE_EXCLUSION_RE="^conf-"

# Some systems override some package exclusions

OPAM_PACKAGE_EXCLUSION_OVERRIDE_RE="${OPAM_PACKAGE_EXCLUSION_OVERRIDE_RE:-}"

###### Function for analyzing one package #####

# Analyze one package
# - retrieve list of files and create NSIS include file
# - retrieve dependencies and create NSIS file for user visible and hidden dependencies
# $1 = package name
# $2 = dependency level

function analyze_package {
  echo "Analyzing package $1 ($2)"

  if [ ${OPAM_FILE_INCLUSION_LIST[$1]+_} ]
  then
    inclusion_list="${OPAM_FILE_INCLUSION_LIST[$1]}"
  else
    inclusion_list="${OPAM_FILE_INCLUSION_LIST_DEFAULT}"
  fi

  if [ ${OPAM_FILE_EXCLUSION_LIST[$1]+_} ]
  then
    exclusion_list="${OPAM_FILE_EXCLUSION_LIST[$1]}"
  else
    exclusion_list="${OPAM_FILE_EXCLUSION_LIST_DEFAULT}"
  fi

  if list_contains "$PRIMARY_PACKAGES" "$1"
  then
    callback_package_primary $1 $2 "$inclusion_list" "$exclusion_list"
  else
    callback_package_secondary $1 $2 "$inclusion_list" "$exclusion_list"
  fi

  files="$(opam show --list-files $1 | grep -E "$inclusion_list" | grep -E -v "$exclusion_list" )" || true
  if echo "$files" | grep '(modified since)' > /dev/null
  then
    echo "The package '$1' contains files which have been modified since opam installed them." >> WARNINGS.log
    files=${files//(modified since)/}
  fi

  echo "${files}" > "${LOGDIR}/$1".filelist
  for file in $files
  do
    if [ -d "$file" ]
    then
      true # ignore directories
    elif [ -f "$file" ]
    then
      relpath="${file#$OPAM_PREFIX}"
      # using dirname and basename is terribly slow on cygwin (minutes for all files in coq)
      # reldir="$(dirname $relpath)"
      # filename="$(basename $relpath)"
      reldir="${relpath%/*}"
      filename="${relpath##*/}"

      callback_file $1 "${file}" "${reldir}" "${filename}"
    else
      echo "In package '$1' the file '$file' does not exist"
      exit 1
    fi
  done

  # handle dependencies
  # Note: the --installed is required cause of an opam bug.
  # See https://github.com/ocaml/opam/issues/4461
  dependencies="$(opam list --required-by=$1 --short --installed)"
  for dependency in $dependencies
  do
    local included=false
    # Unless the dependency is excluded, record the dependency
    if ! list_contains "$OPAM_PACKAGE_EXCLUSION_LIST" "$dependency" && [[ ! "$dependency" =~ ${OPAM_PACKAGE_EXCLUSION_RE} ]] || [[ "$dependency" =~ ${OPAM_PACKAGE_EXCLUSION_OVERRIDE_RE} ]]
    then
      included=true
      # Check if dependency is visible or hidden and write dependency checker macro call in respective NSIS include file
      if list_contains "$PRIMARY_PACKAGES" "$dependency"
      then
        callback_dependency_primary "$1" "$dependency"
      else
        callback_dependency_secondary "$1" "$dependency"
      fi
    fi

    # If the dependency is not yet processed, process it
    if ! list_contains "$PACKAGES_DONE" "$dependency"
    then
      # Even if the package is excluded by OPAM_PACKAGE_EXCLUSION_RE, we still want it in the list
      # so that we can produce an accurate dependency list
      PACKAGES_DONE="$PACKAGES_DONE"$'\n'"$dependency"
      if $included
      then
        analyze_package "$dependency" $(($2 + 1))
      fi
    fi
  done
}

########### TOP LEVEL FILE GATHERING ###########

###### Go through selected packages and recursively analyze dependencies #####

echo '##### Copy opam packages #####'

echo 'PRIMARY PACKAGES'
echo "$PRIMARY_PACKAGES"
echo 'IGNORED PACKAGES'
echo "$OPAM_PACKAGE_EXCLUSION_LIST"

# The initial list of already processed, otherwise processed or ignored packages
PACKAGES_DONE="$PRIMARY_PACKAGES"$'\n'"$OPAM_PACKAGE_EXCLUSION_LIST"

for package in $PRIMARY_PACKAGES
do
  analyze_package "$package" 0
done

