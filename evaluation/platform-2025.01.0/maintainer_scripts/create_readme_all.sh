#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Create Readme.md ######################

# This script creates a README.md file for all available package picks

##### Initialization #####

set -o nounset
set -o errexit

##### Iterate over package picks #####

for pick in package_picks/package-pick-*
do
  maintainer_scripts/create_readme.sh -pick="${pick}" -depgraph
done