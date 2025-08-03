echo "This is work in progress porting this script to zsh and ehnacing the SPDX parsing"
exit 0

#!/usr/bin/env zsh

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2021..2022 Michael Soegtrop
# (C) 2020 Enrico Tassi

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Create Readme.md ######################

# This script creates from an opam installation a README.md file with:
# - name, version, synopsis and description of each primary package
# - name, version, synopsis and description of each dependency package
# - information about licenses, project homepages, ...

##### Initialization #####

set -o nounset
set -o errexit

SCRIPT_PATH="$(dirname "$0")"
ROOT_PATH="$(dirname "${SCRIPT_PATH}")"
DOC_PATH="${ROOT_PATH}/doc"
cd "${ROOT_PATH}"

##### Parameters #####

CHECKOPAMLINKS='Y'
COQ_PLATFORM_PACKAGE_PICK_NAME=''
RESULT_TYPE='MD'
ONLY_INSTALLED='N'
DEPENDCY_GRAPH='N'
DEPENDCY_GRAPH_ONLY='N'

for arg in "$@"
do
  case "${arg}" in
    -quick|-q)             CHECKOPAMLINKS='N' ;;
    -pick=*|-p=*|-v=*)     COQ_PLATFORM_PACKAGE_PICK_NAME="${arg#*=}";;
    -packages=*)           COQ_PLATFORM_PACKAGE_PICK_NAME="${arg#*=}";;
    -html)                 RESULT_TYPE='HTML';;
    -md)                   RESULT_TYPE='MD';;
    -output=*|-o=*)        RESULT_FILE_TXT="${arg#*=}";;
    -table=*|-t=*)         RESULT_FILE_CSV="${arg#*=}";;
    -installed|-i)         ONLY_INSTALLED='Y';;
    -depgraph|-d)          DEPENDCY_GRAPH='Y';;
    -depgraphonly)         DEPENDCY_GRAPH_ONLY='Y';;
    *) echo "Illegal option ${arg}"; exit 1 ;;
  esac
done

# allow short form names for packages
if [ -z "${COQ_PLATFORM_PACKAGE_PICK_NAME}" ]
then
  echo "Please specify a package list file with the -packages=<package-file> option"
  exit 1
else
  for prefix1 in "" "package_picks/"
  do
    for prefix2 in "" "package-pick-"
    do
      for postfix in "" ".sh"
      do
        testname="${prefix1}${prefix2}${COQ_PLATFORM_PACKAGE_PICK_NAME#\~}${postfix}"
        if [ -f "${testname}" ]
        then
          COQ_PLATFORM_PACKAGE_PICK_FILE="${testname}"
        fi
      done
    done
  done
fi

if [ -z "${COQ_PLATFORM_PACKAGE_PICK_FILE+x}" ]
then
  echo "ERROR: package pick ${COQ_PLATFORM_PACKAGE_PICK_NAME} could not be found!"
  exit 1
fi

##### Helpers to switch between HTML and MD output #####

if [ "${RESULT_TYPE}" = 'MD' ]
then
  BB='**'
  BE='**'
  H1B='#'
  H1E=''
  H2B='## **'
  H2E='**'
  PB=''
  PE=''
  BR='<br>'
  END=''
  function REF {
    echo "[$1]($2)"
  }
else
  BB='<b>'
  BE='</b>'
  H1B='<h1>'
  H1E='</h1>'
  H2B='<h2>'
  H2E='</h2>'
  PB='<p>'
  PE='</p>'
  BR='<br>'
  END='</body>'
  function REF {
    echo "<a href=\"$2\" target=\"_blank\">$1</a>"
  }
fi

##### Utility functions #####

# Check if a space separated list contains an item
# $1 = list
# $2 = item

function slist_contains {
    [[ " $1 " == *" $2 "* ]]
}

# Check if a space separated list contains an item with prefix
# $1 = list
# $2 = prefix

function slist_contains_prefix {
    [[ " $1 " == *" $2"* ]]
}

# Interesection of two space separated lists
# $1 = list A
# $2 = list B

function slist_intersection {
  local result=""
  for item in $1
  do
    if slist_contains "$2" "$item"
    then
      result="${result} $item"
    fi
  done
  echo "${result}"
}

# Filter a package list and remove packages from lower levels
# $1 = package list string
# $2 = packages from previous level
# $3 = true to apply name based filter, false otherwise

function filter_package_list() {
  local packages="$1"
  local exclude="$2"
  if $3
  then
    packages="$(echo "${packages}" | tr -s ' ' '\n' | grep -v '^ocaml\|^opam\|^depext\|^conf\|^lablgtk\|^elpi' | tr -s '\n' ' ')"
  else
    # exclude gets filtered, so don't exclude packages which get filtered
    exclude="$(echo "${exclude}" | tr -s ' ' '\n' | grep -v '^ocaml\|^opam\|^depext\|^conf\|^lablgtk\|^elpi' | tr -s '\n' ' ')"
  fi
  packages_filtered=''
  for package in $packages
  do
    if ! slist_contains "${exclude}" "${package}"
    then
      packages_filtered="${packages_filtered} ${package}"
    fi
  done
  echo "${packages_filtered}" |  tr -s ' ' '\n' | sed -E 's/(.*)/\1 \1/' | sed 's/^conf-|^-coq//' | sort | cut -d ' ' -f2 | tr -s '\n' ' '
}

# Check if a URL exists
# $1 url

function check_url {
  curl --head --silent --fail "$1" >/dev/null
}

# Check if an (opam) license name has an SPDX record
# $1 = name of license
# $2 = name of package (for warnings)

typeset -A SPDX_LICENSE

function spdx_license_pre_fill {
  while read p; do
    echo "Preset SPDX_LICENSE $p"
    SPDX_LICENSE[$p]=yes
  done < "${ROOT_PATH}/maintainer_scripts/spdx_known.txt"
  echo ${(kv)SPDX_LICENSE}
}

spdx_license_pre_fill()

function check_spdx_license {
  if ! [[ -v SPDX_LICENSE[$1] ]]
  then
    if check_url "https://spdx.org/licenses/$1.html"
    then
      SPDX_LICENSE[$1]=yes
    else
      SPDX_LICENSE[$1]=no
    fi
  fi

  if [ $SPDX_LICENSE[$1] = yes ]
  then
      return 0
  else
    echo "License for package '$2' with name '$1' has no SPDX record" | tee WARNINGS.log
    return 1
  fi
}

# HTML escape the argument (only basic)

function html_escape {
  local string="$1"
  string="${string//&/&amp;}"
  string="${string//</&lt;}"
  string="${string//>/&gt;}"
  string="${string//\"/&quot;}"
  string="${string//\'/&apos;}"
  string="${string//\\n/<br>}"
  echo "${string}"
}

# Handle multi references, like an email + web adress in an opam maintainer field
# This always produces HTML, even if we are in MD mode
# $1 = display text of reference
# $2 = possibly multiple references
# If something in $2 is not an URL, both the display text and the reference are posted
function html_multi_ref() {
  other=''
  next=false
  for field in $2
  do
    if $next
    then
      printf ", "
    fi
    if [[ $field =~ https://[0-9a-zA-Z./-_~]+ ]]
    then
      printf "<a href='%s'>$1</a>" "${field}"
      next=true
    elif [[ $field =~ [-_0-9a-zA-Z.]+@[-_0-9a-zA-Z.]+ ]]
    then
      printf "<a href='%s'>$1 (email)</a>" "mailto:${field}"
      next=true
    else
      other="$other $field"
    fi
  done
  if [ -n "$other" ]
  then
    echo "$1: $other"
  fi
}

# Get opam package url from repo name and package name
# $1 repo name (opam show -f repository <package>)
# $2 package name

function opam_get_installed_opam_repo() {
  case "$1" in
    default)             local url='https://opam.ocaml.org' ;;
    coq-core-dev)        local url='https://coq.inria.fr/opam/core-dev' ;;
    coq-extra-dev)       local url='https://coq.inria.fr/opam/extra-dev' ;;
    coq-released)        local url='https://coq.inria.fr/opam/released' ;;
    *patch_coq-dev)      local url='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev' ;;
    *patch_coq-released) local url='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/released' ;;
    *patch_ocaml)        local url='https://github.com/coq/platform/tree/main/opam/opam-repository' ;;
    *)                   return 1 ;;
  esac
  local package_main="${2%%.*}"
  echo ${url}/packages/${package_main}/$2/opam
}

##### Read package list file in different configurations #####

BITSIZE=64

COQ_PLATFORM_EXTENT=b
source ${COQ_PLATFORM_PACKAGE_PICK_FILE}
PACKAGES_BASE="${PACKAGES//PIN.}"

COQ_PLATFORM_EXTENT=i
source ${COQ_PLATFORM_PACKAGE_PICK_FILE}
PACKAGES_IDE="${PACKAGES//PIN.}"

COQ_PLATFORM_EXTENT=f
COQ_PLATFORM_COMPCERT=n
COQ_PLATFORM_VST=n
COQ_PLATFORM_UNIMATH=n
COQ_PLATFORM_FIATCRYPTO=n
source ${COQ_PLATFORM_PACKAGE_PICK_FILE}
PACKAGES_FULL="${PACKAGES//PIN.}"

COQ_PLATFORM_EXTENT=f
COQ_PLATFORM_COMPCERT=y
COQ_PLATFORM_VST=y
COQ_PLATFORM_FIATCRYPTO=y
COQ_PLATFORM_UNIMATH=y
source ${COQ_PLATFORM_PACKAGE_PICK_FILE}
PACKAGES_OPTIONAL="${PACKAGES//PIN.}"

COQ_PLATFORM_EXTENT=x
COQ_PLATFORM_COMPCERT=y
COQ_PLATFORM_VST=y
COQ_PLATFORM_UNIMATH=y
COQ_PLATFORM_FIATCRYPTO=y
source ${COQ_PLATFORM_PACKAGE_PICK_FILE}
PACKAGES_EXTENDED="${PACKAGES//PIN.}"

source ${ROOT_PATH}/package_picks/coq_platform_release.sh

package_list_notes="$(grep '# DESCRIPTION'  "${COQ_PLATFORM_PACKAGE_PICK_FILE}" | sed 's/  */ /g' | cut -d ' ' -f 3-)"

##### Determine name of output files #####

RESULT_FILE_TXT="${RESULT_FILE_TXT:-${DOC_PATH}/README${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}.md}"
RESULT_FILE_CSV="${RESULT_FILE_CSV:-${DOC_PATH}/PackageTable${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}.csv}"
RESULT_FILE_GRAPH="${RESULT_FILE_GRAPH:-${DOC_PATH}/DependencyGraph${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}.pdf}"

##### Get list of all installed packages from opam #####

source ${ROOT_PATH}/package_picks/coq_platform_switch_name.sh

echo "Creating Readme for pick ${COQ_PLATFORM_PACKAGE_PICK_FILE} and opam switch ${COQ_PLATFORM_SWITCH_NAME}"

if ! opam switch ${COQ_PLATFORM_SWITCH_NAME}
then
  echo "opam switch ${COQ_PLATFORM_SWITCH_NAME} does not exist => exit"
  exit 0
fi

PACKAGES_INSTALLED="$(opam list --installed --short --columns=name,version --switch="${COQ_PLATFORM_SWITCH_NAME}" | sed 's/  */./' | tr -s '\n' ' ')"

##### Sanity checks #####

# The first sanity check - that the switch exists - is already done above.

# Check if all packages from the extended platform are in the switch.
# If this is not the case, dependencies might be missing.

MISSING_PACKAGES=''

for package in ${=PACKAGES_EXTENDED}
do
  if ! slist_contains "${PACKAGES_INSTALLED}" "${package}"
  then
    echo "WARNING: the package '${package}' is not included in opam switch ${COQ_PLATFORM_SWITCH_NAME}" | tee WARNINGS.log
    MISSING_PACKAGES="${MISSING_PACKAGES} ${package}"
  fi
done

if [ -n "${MISSING_PACKAGES}" ]
then
  MISSING_PACKAGES="${PB}${BB}ATTENTION: This installation is not a complete Coq Platform installtion. The following packages are not included: ${MISSING_PACKAGES}${BE}${PE}"
  echo "WARNING: THE OPAM SWITCH DOES NOT CONTAIN ALL PLATFORM PACKAGES"
fi

##### Filter package lists #####

echo "========== Package lists before filtering =========="
echo PACKAGES_BASE="${PACKAGES_BASE}"
echo PACKAGES_IDE="${PACKAGES_IDE}"
echo PACKAGES_FULL="${PACKAGES_FULL}"
echo PACKAGES_OPTIONAL="${PACKAGES_OPTIONAL}"
echo PACKAGES_EXTENDED="${PACKAGES_EXTENDED}"
echo PACKAGES_INSTALLED="${PACKAGES_INSTALLED}"
echo ""

PACKAGES_DEPENDENCY="$(filter_package_list "${PACKAGES_INSTALLED}" "${PACKAGES_EXTENDED}" false)"
PACKAGES_EXTENDED="$(filter_package_list "${PACKAGES_EXTENDED}" "${PACKAGES_OPTIONAL}" true)"
PACKAGES_OPTIONAL="$(filter_package_list "${PACKAGES_OPTIONAL}" "${PACKAGES_FULL}" true)"
PACKAGES_FULL="$(filter_package_list "${PACKAGES_FULL}" "${PACKAGES_IDE}" true)"
PACKAGES_IDE="$(filter_package_list "${PACKAGES_IDE}" "${PACKAGES_BASE}" true)"
PACKAGES_BASE="$(filter_package_list "${PACKAGES_BASE}" "" true)"

echo "========== Package lists after filtering =========="
echo PACKAGES_BASE="${PACKAGES_BASE}"
echo PACKAGES_IDE="${PACKAGES_IDE}"
echo PACKAGES_FULL="${PACKAGES_FULL}"
echo PACKAGES_OPTIONAL="${PACKAGES_OPTIONAL}"
echo PACKAGES_EXTENDED="${PACKAGES_EXTENDED}"
echo PACKAGES_DEPENDENCY="${PACKAGES_DEPENDENCY}"
echo ""

if [ "${ONLY_INSTALLED}" = "Y" ]
then
  PACKAGES_DEPENDENCY="$(slist_intersection "${PACKAGES_DEPENDENCY}" "${PACKAGES_INSTALLED}")"
  PACKAGES_EXTENDED="$(slist_intersection "${PACKAGES_EXTENDED}" "${PACKAGES_INSTALLED}")"
  PACKAGES_OPTIONAL="$(slist_intersection "${PACKAGES_OPTIONAL}" "${PACKAGES_INSTALLED}")"
  PACKAGES_FULL="$(slist_intersection "${PACKAGES_FULL}" "${PACKAGES_INSTALLED}")"
  PACKAGES_IDE="$(slist_intersection "${PACKAGES_IDE}" "${PACKAGES_INSTALLED}")"
  PACKAGES_BASE="$(slist_intersection "${PACKAGES_BASE}" "${PACKAGES_INSTALLED}" )"

  echo "========== Package lists after installed filtering =========="
  echo PACKAGES_BASE="${PACKAGES_BASE}"
  echo PACKAGES_IDE="${PACKAGES_IDE}"
  echo PACKAGES_FULL="${PACKAGES_FULL}"
  echo PACKAGES_OPTIONAL="${PACKAGES_OPTIONAL}"
  echo PACKAGES_EXTENDED="${PACKAGES_EXTENDED}"
  echo PACKAGES_DEPENDENCY="${PACKAGES_DEPENDENCY}"
  echo ""
fi


##### Create one README.md entry #####

# Create Html (suitable for MD) and CSV entry for package
# $1 = package name (may or may not include version)
# $2 = Coq Platform level

function html_package_opam {
  echo "Create README for $1"

  # Get package information from opam
  # Example output (with 2 license fields ...)
  # opam show "conf-adwaita-icon-theme" -f version:,license:,synopsis:,homepage:
  # version:  "1"
  # license:  "LGPL-3.0-only" "CC-BY-SA-3.0"
  # synopsis: "Virtual package relying on adwaita-icon-theme"
  # homepage: "https://github.com/GNOME/adwaita-icon-theme"
  # Note: the process substitution (rather than pipe) avoids a subshell, so that variables can be set.
  # Note: the declare -a var="(list)" makes it possible to convert a list of quoted strings to an array
  unset pversion plicense psynopsis phomepage pbugreports pdescription pauthors prepository
  multiline=''
  while read -r var value
  do
      case "${var}" in
      version:)     pversion="${value//\"}"; multiline='' ;;
      license:)     plicense="(${value})"; multiline='' ;;
      synopsis:)    psynopsis="${value//\"}"; multiline='' ;;
      homepage:)    phomepage="${value//\"}"; multiline='' ;;
      bug-reports:) pbugreports="${value//\"}"; multiline='' ;;
      description:) pdescription="${value//\"}"; multiline='' ;;
      authors:)     pauthors="${value//\"}"; multiline=pauthors ;;
      repository)   prepository="${value//\"}"; multiline='' ;;
      *)
        if [ -n "$multiline" ] 
        then
          declare $multiline="${!multiline} - ${var//\"} ${value//\"}"
        else
          echo "Unexpected result from opam show: $var $value"; exit 1
        fi ;;
    esac
  done < <(opam show "$1" -f version:,license:,synopsis:,homepage:,bug-reports:,description:,authors:,repository)

  # Remove conf- prefix for printing of package name
  package_pretty=${package/conf-}

  # Some author field contain a empty email reference, which doesn't look nice
  pauthors="${pauthors//<>/}"
  # Do basic HTML escaping for synposis
  # I used 'recode' for this, but it is rather fragile, and this should be good enough
  psynopsis=$(html_escape "${psynopsis}")
  pdescription=$(html_escape "${pdescription}")
  pauthors=$(html_escape "${pauthors}")
  
  # Elaborate license information
  if [ ${#plicense[@]} -eq 0 ]
  then
    echo "License for package '${package}' is unspecified" | tee WARNINGS.log
    licensehtml="unknown - please clarify with <a href=\"${phomepage}\" target=\"_blank\">homepage</a>"
    licensecsv="unknown"
  else
    licensehtml=""
    licensecsv=""
    for license in "${plicense[@]}"
    do
      license="${license//\"}"
      license=${license/CeCILL/CECILL}
      if [[ "${license}" = 'https://'* ]] || [[ "${license}" = 'http://'* ]]
      then
        licensehtml="${licensehtml} <a href=\"${license}\" target=\"_blank\">link</a>"
        licensecsv="${licensecsv}${licensecsv:+,}${license}"
      elif check_spdx_license "${license}" "${package}"
      then
        licensehtml="${licensehtml} <a href=\"https://spdx.org/licenses/${license}.html\" target=\"_blank\">${license}</a>"
        licensecsv="${licensecsv}${licensecsv:+,}https://spdx.org/licenses/${license}.html"
      else
        licensehtml="${licensehtml} ${license} - see <a href=\"${phomepage}\" target=\"_blank\">homepage</a> for details"
        licensecsv="${licensecsv}${licensecsv:+,}${license}"
      fi
    done
  fi

  # Look up the opam package URL
  popam_url="$(opam_get_installed_opam_repo "${prepository}" "$1")"
  if [ "${CHECKOPAMLINKS}" = 'Y' ] && ! check_url "${popam_url}"
  then
    echo "opam url '${popam_url}' for package '${package}' does not exist!" | tee WARNINGS.log
  fi

  # Create final HTML text for package
  printf "<details>\n" >> ${RESULT_FILE_TXT}
  printf "  <summary><a href='%s'>%s</a>\n(%s) %s</summary>\n" "${phomepage}" "${package_pretty}" "${pversion}" "${psynopsis}" >> ${RESULT_FILE_TXT}
  printf "  <dl>\n" >> ${RESULT_FILE_TXT}
  printf "    <dt><b>authors</b></dt><dd>%s</dd>\n" "${pauthors}" >> ${RESULT_FILE_TXT}
  printf "    <dt><b>license</b></dt><dd>%s</dd>\n" "${licensehtml}" >> ${RESULT_FILE_TXT}
  printf "    <dt><b>links</b></dt><dd>\n" >> ${RESULT_FILE_TXT}
  if [ -n "${phomepage}" ]
  then  
    printf "      (<a href='%s'>homepage</a>)\n" "${phomepage}" >> ${RESULT_FILE_TXT}
  fi
  if [ -n "${pbugreports}" ]
  then  
    printf "      (%s)\n" "$(html_multi_ref 'bug reports' "${pbugreports}")" >> ${RESULT_FILE_TXT}
  fi
  if [ -n "${popam_url}" ]
  then  
    printf "      (<a href='%s'>opam package</a>)\n" "${popam_url}" >> ${RESULT_FILE_TXT}
  fi
  printf "    </dd>\n" >> ${RESULT_FILE_TXT}
  printf "    <dt><b>description</b></dt><dd>%s</dd>\n" "${pdescription}" >> ${RESULT_FILE_TXT}
  printf "  </dl>\n" >> ${RESULT_FILE_TXT}
  printf "</details>\n\n" >> ${RESULT_FILE_TXT}

  # Create CSV entry for package
  package_main="${1%%.*}"
  printf '"%s","%s","%s","%s"\n' "${package_main}" "${pversion}" "${licensecsv}" "$2" >> ${RESULT_FILE_CSV}
}

##### Create README.md and README.csv #####

if [ "$DEPENDCY_GRAPH_ONLY" = "N" ]
then

# Write CSV header

echo "package,version,license,level" > ${RESULT_FILE_CSV}

# Write MD/HTML header

if [ "${RESULT_TYPE}" = 'MD' ]
then
  echo '' > ${RESULT_FILE_TXT}
else
cat > ${RESULT_FILE_TXT} <<EOT
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>The Coq Platform - $COQ_PLATFORM_RELEASE</title>
<style>
body {
   width : 60em;
   margin-left : auto;   
   margin-right : auto;   
}
h1,h2 {
  text-align : center;
  font-family : sans-serif;
}
dt {
  font-family : sans-serif;
  font-weight : bold;
}
dd { 
  margin-bottom : 1em;
}
</style>
</head>
<body>
EOT
fi

cat >> ${RESULT_FILE_TXT} <<EOT
${H1B} Coq Platform ${COQ_PLATFORM_RELEASE} providing ${COQ_PLATFORM_VERSION_TITLE}${H1E}

${PB}The $(REF 'Coq proof assistant' 'https://coq.inria.fr') provides a formal language
to write mathematical definitions, executable algorithms, and theorems, together
with an environment for semi-interactive development of machine-checked proofs.${PE}

${PB}The $(REF 'Coq Platform' 'https://github.com/coq/platform') is a distribution of the Coq
interactive prover together with a selection of Coq libraries and plugins.${PE}

${PB}The Coq Platform supports to install several versions of Coq (also in parallel).
This README file is for ${BB}Coq Platform ${COQ_PLATFORM_RELEASE} with Coq ${COQ_PLATFORM_COQ_TAG}${BE}.
The README files for other versions are linked in the main $(REF 'README' 'https://github.com/coq/platform/blob/main/README.md').${PE}

${PB}${COQ_PLATFORM_VERSION_DESCRIPTION}${PE}

${PB}The OCaml version used is $(opam switch invariant | tr -d '"[]{}' | sed 's/.*= //').${PE}

${PB}The Coq Platform supports four levels of installation extent:
${BB}base${BE}, ${BB}IDE${BE}, ${BB}full${BE} and ${BB}extended${BE} and a few ${BB}optional${BE} packages.
The sections below provide a short description of each level and the list of
packages included in each level. Packaged versions of the Coq Platform usually
contain the ${BB}extended${BE} set with all optional packages.${PE}

${MISSING_PACKAGES}

${PB}${BB}Note on non-free licenses:${BE} The Coq Platform contains software with
${BB}non-free licenses which do not allow commercial use without purchasing a license${BE},
notably the ${BB}coq-compcert${BE} package. Please study the package licenses given
below and verify that they are compatible with your intended use in case you
plan to use these packages.${PE}

${PB}${BB}Note on license information:${BE}
The license information given below is obtained from opam.
The Coq Platform team does no double check this information.${PE}

${PB}${BB}Note on multiple licenses:${BE} 
In case several licenses are given below, it is not clearly specified what this means.
It could mean that parts of the software use one license while other parts use another license.
It could also mean that you can choose between the given licenses.
Please clarify the details with the homepage of the package.${PE}

${PB}${BB}Note:${BE} The package list is also available as $(REF 'CSV' https://github.com/coq/platform/tree/main/doc/${RESULT_FILE_CSV#${DOC_PATH}/}).${PE}

${PB}${BB}Note:${BE} Click on the triangle to show additional information for a package!${PE}

${BR}

${H2B}Coq Platform ${COQ_PLATFORM_RELEASE} with Coq ${COQ_PLATFORM_COQ_TAG} "base level"${H2E}

The ${BB}base level${BE} is mostly intended as a basis for custom installations using
opam and contains the following package(s):

EOT

for package in ${=PACKAGES_BASE}
do
  html_package_opam "${package}" base
done

cat >> ${RESULT_FILE_TXT} <<EOT
${BR}

${H2B}Coq Platform ${COQ_PLATFORM_RELEASE} with Coq ${COQ_PLATFORM_COQ_TAG} "IDE level"${H2E}

${PB}The ${BB}IDE level${BE} adds an interactive development environment to the ${BB}base level${BE}.${PE}

${PB}For beginners, e.g. following introductory tutorials, this level is usually sufficient.
If you install the ${BB}IDE level${BE}, you can later add additional packages individually
via \`opam install 'package-name'\` or rerun the Coq Platform installation script
and choose the full or extended level.${PE}

${PB}The ${BB}IDE level${BE} contains the following package(s):${PE}

EOT

for package in ${=PACKAGES_IDE}
do
  html_package_opam "${package}" ide
done

cat >> ${RESULT_FILE_TXT} <<EOT
${BR}

${H2B}Coq Platform ${COQ_PLATFORM_RELEASE} with Coq ${COQ_PLATFORM_COQ_TAG} "full level"${H2E}

${PB}The ${BB}full level${BE} adds many commonly used coq libraries, plug-ins and
developments.${PE}

${PB}The packages in the ${BB}full level${BE} are mature, well maintained
and suitable as basis for your own developments.
See the Coq Platform $(REF 'charter' 'https://github.com/coq/platform/blob/main/charter.md') for details.${PE}

${PB}The ${BB}full level${BE} contains the following packages:${PE}

EOT

for package in ${=PACKAGES_FULL}
do
  html_package_opam "${package}" full
done

cat >> ${RESULT_FILE_TXT} <<EOT
${BR}

${H2B}Coq Platform ${COQ_PLATFORM_RELEASE} with Coq ${COQ_PLATFORM_COQ_TAG} "optional packages"${H2E}

${PB}The ${BB}optional${BE} packages have the same maturity and maintenance level as the
packages in the full level, but either take a rather long time to build or have
a ${BB}non open source license${BE} or depend on packages with non open source license.${PE}

${PB}The interactive installation script and the Windows installer explicitly ask
if you want to install these packages.${PE}

${PB}The macOS and snap installation bundles always include these packages.${PE}

${PB}The following packages are ${BB}optional${BE}:${PE}

EOT

for package in ${=PACKAGES_OPTIONAL}
do
  html_package_opam "${package}" optional
done

cat >> ${RESULT_FILE_TXT} <<EOT
${BR}

${H2B}Coq Platform ${COQ_PLATFORM_RELEASE} with Coq ${COQ_PLATFORM_COQ_TAG} "extended level"${H2E}

${PB}The ${BB}extended level${BE} contains packages which are in a beta stage or otherwise
don't yet have the level of maturity or support required for inclusion in the
full level, but there are plans to move them to the full level in a future
release of Coq Platform. The main point of the extended level is advertisement:
users are important to bring a development from a beta to a release state.${PE}

${PB}The interactive installation script explicitly asks if you want to install these packages.
The macOS and snap installation bundles always include these packages.
The Windows installer also includes them, and they are selected by default.${PE}

${PB}The ${BB}extended level${BE} contains the following packages:${PE}

EOT

for package in ${=PACKAGES_EXTENDED}
do
  html_package_opam "${package}" extended
done

cat >> ${RESULT_FILE_TXT} <<EOT
${BR}

${H2B}Dependency packages${H2E}

${PB}In addition the dependencies listed below are partially or fully included or required during build time.
Please note, that the version numbers given are the versions of opam packages,
which do not always match with the version of the supplied packages.
E.g. some opam packages just refer to latest packages e.g. installed by MacPorts,
Homebrew or Linux system package managers.
Please refer to the linked opam package and/or your system package manager for details on what software version is used.${PE}

EOT

# sort packages by name, but ignore a "conf-" prefix
for package in ${=PACKAGES_DEPENDENCY}
do
  html_package_opam "${package}" dependency
done

echo "${END}" >> ${RESULT_FILE_TXT}

fi

##### Create Dependency.pdf #####

DEP_INCLUSION_RE="^coq"

PACKAGES_DONE=""

# $1 = list of packages
# $2 = node attributes (without [], with trailing , if not empty)
# $3 : true = include all packages, false = include only name filtered packages
function write_packages (
  for package in $1
  do
    echo "Processing dependcy graph for $package"
    if [[ "$package" =~ ${DEP_INCLUSION_RE} ]] || $3
    then
      package_name="${package%%.*}"
      package_version="${package#*.}"
      echo "\"$package_name\" [$2label=\"$package_name\\n$package_version\"];" >> dependencies.gv

      dependencies="$(opam list --required-by=$package --short --installed --switch="${COQ_PLATFORM_SWITCH_NAME}")"
      for dependency in $dependencies
      do
        # If the package is included record the dependency
        if [[ "$dependency" =~ ${DEP_INCLUSION_RE} ]]
        then
          case $dependency in
              coq) attr="[color=gray]";;
              *)   attr="";;
          esac
          echo "\"$package_name\" -> \"$dependency\" $attr;" >> dependencies.gv
        fi
      done
    fi
  done
)

if [ "$DEPENDCY_GRAPH" = "Y" ]
then
  echo "digraph G {" > dependencies.gv
  echo "label = \"Dependecy graph for Coq Platform ${COQ_PLATFORM_RELEASE}${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}\\n\\n\"" >> dependencies.gv
  echo "labelloc = \"t\"" >> dependencies.gv
  echo "fontname = \"Helvetica,Arial,sans-serif\"" >> dependencies.gv
  echo "fontsize = 32" >> dependencies.gv

  write_packages "$PACKAGES_BASE" "shape=ellipse,color=blue," true
  write_packages "$PACKAGES_IDE" "shape=ellipse,color=blue," true
  write_packages "$PACKAGES_FULL" "shape=ellipse,color=darkgreen," true
  write_packages "$PACKAGES_OPTIONAL" "shape=ellipse,color=red," true
  write_packages "$PACKAGES_EXTENDED" "shape=ellipse,color=orange," true
  write_packages "$PACKAGES_DEPENDENCY" "shape=ellipse,color=gray," false

  echo "}" >> dependencies.gv

  dot dependencies.gv -Tpdf > "$RESULT_FILE_GRAPH"
  rm dependencies.gv
fi
