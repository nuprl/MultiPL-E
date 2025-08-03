#!/bin/bash

# This is an example for building a snap locally using LXD as virtualization solution
# Run this script from the Coq platform root folder via linux/build_snap.sh

# This assumes you did
#   sudo snap install lxd
#   sudo lxd init --minimal

linux/create_snapcraft_yaml.sh -packages="8.18~2023.11" -extent=b -parallel=p -jobs=4 -large=e -switch=k -set-switch=y
SNAPCRAFT_BUILD_ENVIRONMENT=lxd snapcraft clean
SNAPCRAFT_BUILD_ENVIRONMENT=lxd SNAPCRAFT_BUILD_ENVIRONMENT_CPU=6  SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=12G snapcraft snap
