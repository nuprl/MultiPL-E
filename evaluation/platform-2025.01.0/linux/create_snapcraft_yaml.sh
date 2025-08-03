#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2021 Enrico Tassi, Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### CREATE scnapcraft.yml #####################

# This script creates snap craft yaml file from which a
# snap based Linux installer is created in a later step

###################### Preliminaries ######################

echo "##### Create snap/scnapcraft.yml #####"

###### Script safety ######

set -o nounset
set -o errexit

##### Initialization #####

cd "$(dirname "$0")/.."
source "shell_scripts/init_machine_type.sh"
source "shell_scripts/init_utilities.sh"

##### Parameters #####

source "shell_scripts/parse_cmdline_arguments.sh"
source "shell_scripts/ask_large.sh"

##### Get pick and release information #####

source "package_picks/coq_platform_release.sh"
source "${COQ_PLATFORM_PACKAGE_PICK_FILE}"
source "package_picks/coq_platform_switch_name.sh"

# Snap versions cannot contain . nor +
PLATFORM_RELEASE=${COQ_PLATFORM_RELEASE//[.+]/-}

###################### Create snapcraft.yaml #####################

# Description of the snap
COQ_DESCRIPTION=`mktemp`
cat > $COQ_DESCRIPTION <<EOT
  The Coq proof assistant provides a formal language to write
  mathematical definitions, executable algorithms, and theorems, together
  with an environment for semi-interactive development of machine-checked
  proofs.
  
  This snap contains the Coq prover version $COQ_PLATFORM_COQ_TAG
  along with CoqIDE and a collection of packages.

  Details on the included packages can be found here:
  https://github.com/coq/platform/blob/main/doc/README${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}.md

  Part of this information is also available in table form here:
  https://github.com/coq/platform/blob/main/doc/PackageTable${COQ_PLATFORM_PACKAGE_PICK_POSTFIX}.csv
EOT

COQ_DESCRIPTION_LEN="$(wc -m < $COQ_DESCRIPTION)"
if [ "$COQ_DESCRIPTION_LEN" -gt 4096 ]
then
  echo "ERROR: the description text is too long: $COQ_DESCRIPTION_LEN > 4096"
  cat $COQ_DESCRIPTION
  exit 1
else
  echo "INFO: length of description text is OK: $COQ_DESCRIPTION_LEN <= 4096"
fi

mkdir -p snap/

sed \
   -e "s/@@PLATFORM_RELEASE@@/$PLATFORM_RELEASE/g" \
   -e "s/@@PLATFORM_ARGS@@/$*/g" \
   -e "/@@COQ_DESCRIPTION@@/r $COQ_DESCRIPTION" -e "/@@COQ_DESCRIPTION@@/d" \
   linux/snap/snapcraft.yaml.in > snap/snapcraft.yaml

echo "INFO: filled in snap/snapcraft.yaml"

mkdir -p snap/gui/

sed \
   -e "s/@@PLATFORM_RELEASE@@/$PLATFORM_RELEASE/g" \
   linux/snap/coq-prover.desktop.in > snap/gui/coq-prover.desktop

echo "INFO: filled in snap/gui/coqide.desktop"

echo ""
echo "If you want to restart the snap creation from scratch after chaging the scripts, run first:"
echo "  snapcraft clean"
echo ""
echo "Then run - depending on the resources you want to give to the snap VM:"
echo "  SNAPCRAFT_BUILD_ENVIRONMENT_CPU=2  SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=4G  snapcraft snap"
echo "  SNAPCRAFT_BUILD_ENVIRONMENT_CPU=3  SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=6G  snapcraft snap"
echo "  SNAPCRAFT_BUILD_ENVIRONMENT_CPU=6  SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=12G snapcraft snap"
echo "  SNAPCRAFT_BUILD_ENVIRONMENT_CPU=12 SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=24G snapcraft snap"
echo "  SNAPCRAFT_BUILD_ENVIRONMENT_CPU=24 SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=48G snapcraft snap"
echo "  SNAPCRAFT_BUILD_ENVIRONMENT_CPU=48 SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=96G snapcraft snap"
echo "ATTENTION: this must fit the -jobs option you gave ($COQ_PLATFORM_JOBS)!"
echo "You need about twice the number of cores in the VM (and according memory) as the -jobs value."
echo "The values suggested above are tested and leave you a bit of resources on a machine with 2^n memory."
echo ""
echo "To install the created snap run"
echo "  snap install --dangerous coq-prover_${PLATFORM_RELEASE}_amd64.snap"

rm -f $COQ_DESCRIPTION
