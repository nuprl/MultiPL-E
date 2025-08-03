## Build the snap package for the full platform

The web UI only lets you do this for the default branch, in order to run the
`snap.yml` workflow on another branch (a git ref really) you can use the
`./github_actions/run_snap.sh`.

First of all you need to generate (once and forall) a token from
https://github.com/settings/tokens (tick the "workflow" box).

Then:
```shell
export GHTOKEN=6NDVjMDhmZDAwMGZ...
export GHUSER=gares
export BRANCH=v8.13
export PLATFORM="-extent=f -parallel=p -jobs=2 -large=i -compcert=y"
export SAVE=true
export UPLOAD=false
./github_actions/run_snap.sh
```
The shell script prints a `curl` invocation you have to run (after inspection).
