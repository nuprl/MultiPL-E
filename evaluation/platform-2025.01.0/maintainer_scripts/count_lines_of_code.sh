#!/usr/bin/env bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020..2021 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### CREATE SOURCE STATISTICS ######################

# This script extracts from each installed coq opam package all sources,
# so that one can run source statistics.

###################### Script safety and debugging settings ######################

set -o nounset
set -o errexit

###### The scripts supports a regexp package name pattern as $1 #####

pattern="${1:-^coq}"

###### Clear and create source statistics folder #####

rm -rf source-statistics
mkdir source-statistics

###### Get filtered list of explicitly installed packages #####

echo "Create package list"

packages="$(opam list --installed-roots --short --columns=name | grep "${pattern}" | cat)"

##### Get the source for each package #####

for package in ${packages}
do
  # get installed version of package (otherwise opam source gives the latest)
  packagefull=$(opam list --installed-roots --short --columns=name,version ${package} | sed 's/ /./')
  echo "Extracting sources for ${packagefull}"
  opam source --dir=source-statistics/${package} ${packagefull}
done
