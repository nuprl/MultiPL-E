#!/bin/bash

[ -z "$GHUSER"        ] && echo "please set GHUSER to your github user" && exit 1
[ -z "$GHTOKEN"       ] && echo "please set GHTOKEN to your github access token (generate one here: https://github.com/settings/tokens)" && exit 1
[ -z "$BRANCH"        ] && echo "please set BRANCH to the branch to build" && exit 1
[ -z "$PLATFORM_ARGS" ] && echo "please set PLATFORM_ARGS to the arguments for the script, eg \"-packages=8.13 -extent=f -parallel=p -jobs=2 -large=i -compcert=y\"" && exit 1
[ -z "$SAVE"          ] && echo "INFO: set SAVE to true to save the artifact (default false)" && SAVE=false
[ -z "$UPLOAD"        ] && echo "INFO: set UPLOAD to true to upload to the Snap Store (default false)" && UPLOAD=false

function go {
  local obj=$(printf '{ "ref": "%s", "inputs": { "save" : "%s", "upload" : "%s", "platform" : "%s" } }' "$BRANCH" "$SAVE" "$UPLOAD" "$PLATFORM_ARGS")
  echo curl -u $GHUSER:\$GHTOKEN -X POST \
    https://api.github.com/repos/coq/platform/actions/workflows/snap.yml/dispatches -d $(printf "'%s'" "$obj")
}

echo "Run this:"
echo $(go)
