#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Create Readme.md ######################

# This script builds all available package picks
# It also creates the readme, packagelist and dependency graph for all picks
# THIS CAN TAKE A DAY

##### Initialization #####

set -o nounset
set -o errexit

##### Iterate over package picks #####

for pick in package_picks/package-pick-*
do
  ./coq_platform_make.sh -pick="${pick}" -extent=x -parallel=p -jobs=8 -compcert=y -large=i -switch=k -set-switch=n 
  maintainer_scripts/create_readme.sh -pick="${pick}" -depgraph
done