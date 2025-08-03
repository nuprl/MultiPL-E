# How to create a new major Coq Platform release

## Create a preliminary pick file

### Initial steps

In this step a preliminary "best effort" pick file is created for the latest Coq version.
The goal of this pick file is mostly to test what works and what not, so that we can give
informative feedback to package maintainers about the status of their packages.

The pick file generation follows these steps:

- copy and paste the latest pick file in `package_picks`
- the name of the pick file should be `package-pick-${COQ_PLATFORM_PACKAGE_PICK_POSTFIX without initial ~}` - that is the file name and the variable setting should correspond
- adjust the header information:
  - the `+beta1` extension of `COQ_PLATFORM_PACKAGE_PICK_POSTFIX` refers to the status of the pick, not to the status of the Coq release
  - the Coq patch version (beta, rc1, .0, .1, ...) is **never** shown in the pick - the pick always uses the latest patch release of the specified Coq version
  - the `COQ_PLATFORM_VERSION_SORTORDER` needs to be aligned with other packages - currently dev is `99`, so `98` is one before `dev`
  - `COQ_PLATFORM_USE_DEV_REPOSITORY` must be `Y` for any pre release (beta or rc1) and `N` otherwise. 
     This flag controls if the `core-dev` and `extra-dev` opam repos are used by the newly created switch.
- A typical `CONTROL VARIABLES` section for a preliminary pick is:
```
###################### CONTROL VARIABLES #####################

# The two lines below are used by the package selection script
COQ_PLATFORM_VERSION_TITLE="Coq 8.18+rc1 (released Sep 2023) with the preliminary package pick from Sep 2023"
COQ_PLATFORM_VERSION_SORTORDER=98

# The package list name is the final part of the opam switch name.
# It is usually either empty ot starts with ~.
# It might also be used for installer package names, but with ~ replaced by _
# It is also used for version specific file selections in the smoke test kit.
COQ_PLATFORM_PACKAGE_PICK_POSTFIX='~8.18+beta1'

# The corresponding Coq development branch and tag
COQ_PLATFORM_COQ_BRANCH='v8.18'
COQ_PLATFORM_COQ_TAG='8.18+rc1'

# This controls if opam repositories for development packages are selected
COQ_PLATFORM_USE_DEV_REPOSITORY='Y'

# This extended descriptions is used for readme files
COQ_PLATFORM_VERSION_DESCRIPTION='This version of Coq Platform 2025.01.0 includes Coq 8.18+rc1 from Sep 2023. '
COQ_PLATFORM_VERSION_DESCRIPTION+='This is a preliminary release intended for package maintainers. '

# The OCaml version to use for this pick (just the version number - options are elaborated in a platform dependent way)
COQ_PLATFORM_OCAML_VERSION='4.14.1'
```
- select the most recent coq platform opam switch with `opam switch <name>` and possibly `eval $(opam env)`
- run `opam update`
- use `opam show <name>` to inform yourself about available versions of the below packages (for these one can assume that opam is up to date)
- in the new pickfile adjust the versions of these packages
  - `ocamlfind` - this involves porting the `relocatable` patch and can also be done later, but requires a full rebuild then
  - `dune`
  - `dune-configurator`
  - `coq`
  - `coqide`
  - use 
- Build Coq Platform until including CoqIDE using `OPAMYES=0 ./coq_platform_make.sh -extent=i -parallel=p -jobs=8 -switch=d` and select the new pick when asked
  - if this fails, fix it and rerun the build (possibly using `-switch=k`)

### Select initial package versions

- empty the files `maintainer_scripts/PATCHED_PACKAGE_LIST_FILE.sh` and `maintainer_scripts/packages_already_processed.txt` - these files contain a list of already processed packages and are usually checked in since the whole process can take several days
- run the script `./maintainer_scripts/package-version-info.sh  package_picks/package-pick-<new pick>.sh`
- this script copies the new pick, removes comment signs in front of any package pick line and then gets some info for each package in the pick, e.g.:
```
==================== PROCESSING coq-bignums ====================
OPAM:             NOT INSTALLED
OPAM issue url    https://github.com/coq/bignums/issues
Coq CI repo:      https://github.com/coq/bignums
Coq CI ref:       a8c50a569a971d6e36e8df88ca16f9f8958f9543
OPAM versions:    8.6.0  8.7.0  8.7.dev  8.8.0  8.8.dev  8.9.0  8.10+beta1  8.10.0  8.11.0  8.11.dev  8.12.0  8.12.dev  8.13+beta1  8.13.0  8.14.0  8.15.0  8.16.0  8.17.0  9.0.0+coq8.13  9.0.0+coq8.14  9.0.0+coq8.15  9.0.0+coq8.16  9.0.0+coq8.17  9.0.0+coq8.18  dev [9.0.0+coq8.18]
GIT tag-versions: 8.6.0  8.7.0  8.8+beta1  8.8.0  8.9.0  8.10+beta1  8.10.0  8.11.0  8.12.0  8.13+beta1  8.13.0  8.14.0  8.15.0  8.16.0  8.17.0  9.0.0  9.0.0+coq8.13  9.0.0+coq8.14  9.0.0+coq8.15  9.0.0+coq8.16  9.0.0+coq8.17  9.0.0+coq8.18  
```
- compare the git tag names and opam package versions, do an initial pick for the package and update the new pick file - the packages are processed in the same order as they appear in the pick file
- in case the opam and git tag versions don't match, try using `opam show --raw <package.version>` to see how opam and git versions relate
- in case there is a new tag but no opam package, consider to create one in the coq platform opam patch folder
  - `git clone git@github.com:coq/opam-coq-archive.git` (or pull)
  - copy the latest opam package from the above git repo to `opam/opam-coq-archive/released` (or a more appropriate coq platform opam patch folder - there are 3)
  - adjust the version number (that is the folder name)
  - adjust the source tar name in the opam file
  - make sure the source TGZ file in the opam file comes via HTTPS or other protected services
  - `wget` the new source tar file locally
  - run `openssl dgst --sha512 <source.tgz>` and copy/paste the SSH key into the opam file (If the opam file was still SHA256, update it)
- run this process for all packages in the `full` extent
- do a **sequential** build of the full extent:
  - `OPAMYES=0 ./coq_platform_make.sh -extent=x -parallel=s -jobs=8 -compcert=y -large=i -switch=k`
  - a parallel build is likely to have opam conflicts and opam is not terribly informative about the nature of such conflicts
  - a sequential build gives much more information in case there are conflicts - typically at some point the build says it want's to recompile something giving a detailed reason why
  - note that `OPAMYES=0` is required, otherwise the script sets it to `1` and would do the above recompiles without stopping to ask
- if the build fails just because of an opam version restriction, try creating a patched opam file with relaxed restrictions
  - the are a few scripts `maintainer_scripts/patch_opam_package_<detail>.sh` to help with this, but please note that these are not that well tested and that they use `opam show --raw` to get
    the previous version, which is usually a reordering / reformatting of the opam file and not comparable with it (PRs to fix this welcome ;-)
- if something isn't easy to fix, comment out the package (it dependent package) with a note why the package was disabled (`# version xyz does not work`). Typically anything that requires patching the repo's source code would be considered not easy to fix.
- if things are reasonably file for the `full` build, run the script again for the extended selection - it should pick up where you aborted it before cause of `maintainer_scripts/packages_already_processed.txt`

## Publish the release

### Things to check

- Check the tracker issue and the milestone that everything is done!
- Note: we do not create a compatibility pick for the previous version of Coq any more unless there is a good reason

### Update release number

- Update the platform release number in coq-platform-main/package_picks/coq_platform_release.sh
  **ATTENTION**: the release always has a minor extension (like 2022.04.0)
- remove folders macos_installer, windows_installer, smoke_test_kit
- search for the old switch name `CP.2025.01.0~8.20~2025.01` and replace it with the new switch name (one by one, e.g. using VSCode file search individual replace
  - **do not replacing entries in the two opam switch list in ReadMe.md**
  - alternatively replace everywhere and fix the switch lists later (must be touched anyway to insert the new switch)
- search for the old switch prefix `CP.2025.01.0` and replace with the new switch prefix
  - **ATTENTION**: the release always has a minor extension (like 2022.04.0) - the pick never has a minor extension!
  - **ATTENTION**: search for the new switch prefix and then search for just "CP.20" and compare the hit count to make sure nothing was left over
  The **difference should be one** cause of the hit to CP.20 2 lines above.
- search for last release name "2025.01.0" and change in an appropriate way
  - doing so, exclude the release notes entry
  - do change the release Readme files - we usually don't want to recreate all of them!
- search for the old pick code `8.20~2025.01` and replace it with the new one
- double check
  - search for `https://github.com/coq/platform/archive/refs/tags`
  - search for `git clone --branch`
  - search for `-packages=`

- Update the pick choices in CI
  - on Mac and WIndows keep the current and previous picks
    - in case there is a double release (like package-pick-8.18~mc2) keep the double release and the previous
    - in case a compatibility release for the previous version was added, keep this as well
  - on Ubuntu keep all first releases of all Coq versions
    - remove compatibility releases (updated package picks)

- Double check
  - Coq / pick version in switch names (should already be done by the replaces above)
  - Update the pick choice in the example files (should already be done by the replaces above)

- Add a note to ReadMe.md:
```
# ATTENTION RELEASE IN PROGRESS

**We are currently preparing a release, which has the effect that some links already refer to the new tag, even though this does not exist as yet.**

**In case you experience dead links, please replace `2025.01.0` with `2023.11.0`.**
```

### Create documentation for new release

- make a complete (extended, include large and all optional packages) build by running
  `./coq_platform_make.sh -packages="8.20~2025.01" -extent=x -parallel=p -jobs=8 -compcert=y -large=i`
- create the ReadMe .md file, the package list .csv file and depedency graph .pdf file with
  **ATTENTION** this script is not compatible with zsh (porting is in progress but complicated - maybe better move to python)!
  `brew install bash`
  `ls /opt/homebrew/Cellar/bash/`
  `/opt/homebrew/Cellar/bash/5.2.37/bin/bash maintainer_scripts/create_readme.sh -pick=8.20~2025.01 -depgraph`

### Optional: recreate documentation for all picks

- This means following the process from the previous step for all picks
- This should be done about once per year because dependency versions might change

### Update README.md

- add new pick(s)
  - in section Overview
  - in the two opam switch lists in sections "Using different Coq versions in parallel" and "Installation of additional packages"
- create a new entry in the release notes

### Create a preliminary draft release in Github

- this is used as a means to transport unsigned installers to INRIA

### Mac

- make a complete (extended, include large and all optional packages) build by running
  `./coq_platform_make.sh -packages="8.20~2025.01" -extent=x -parallel=p -jobs=8 -compcert=y -large=i`
- select the created switch (if you did not answer 'y' at the corresponding question above) and run `eval $(opem env)`
- check the minimum OS version with `otool -l $(which coqc) | grep -A 1 minos` (should be `minos 11.0` on ARM and `minos 10.13` on Intel)
- create the smoke test kit by running `shell_scripts/create_smoke_test_kit.sh`
- run the smoke test kit by running `smoke-test-kit/run-smoke-test.sh`
- create the installer by running `macos/create_installer_macos.sh`
- upload the installer as attachment to the github draft release create above
- possibly repeat the complete process for additional variant installers
- have INRIA sign the installer(s)  (ask Romain Tetely or the current release manager)
- test the signed installers on a local MacOS ARM and Intel machine (using the smoke test kit)
  - from **external console** (not from VSCode - it always has coqc in the path)
    ```
    opam switch create --empty empty
    opam switch empty
    eval $(opam env)
    which coqc (should not find anything)
    smoke-test-kit/run-smoke-test.sh
    ```
- have INRIA sign the installers from a CI run matching the release tag (ask Romain Tetely or the current release manager)
- test the signed installers on a local MacOS ARM and Intel machine (using the smoke test kit)

### Build Windows installer

- make a complete (extended, include large and all optional packages) build by running
  `./coq_platform_make.sh -packages="8.19~2024.10" -extent=x -parallel=p -jobs=8 -compcert=y -large=i`
- select the created switch (if you did not answer 'y' at the corresponding question above) and run `eval $(opem env)`
- create the smoke test kit by running `shell_scripts/create_smoke_test_kit.sh`
- run the smoke test kit by running `smoke-test-kit/run-smoke-test.sh`
- create the installer by running `windows/create_installer_windows.sh`
- install the installer locally in the recommended folder (so that the smoke tets kit can find it)
- test it using the smoke test kit
  - start the smoke test kit batch file from a plain CMD console which does not have access to Coq
- have INRIA sign the installers from a CI run matching the release tag (ask Romain Tetely or the current release manager)
- test the signed installers on a local Windows machine (using the smoke test kit)

### Local smoke test kit (pre installer build)

Install app from DMG

Note: coqc can also be used from an unsigned installer!

### Additional test

- run smoke test kit for new picks
- test if sequential builds don't recompile something
- for this it is best to set OPAMYES=0 in coq_platform_make.sh

### Tag

- git tag 2025.01.0 -a -m "Release 2025.01.0 with latest pick 8.19~2024.10"
- git push --tags

### Remove the "ATTENTION RELEASE IN PROGRESS" note from ReadMe.md

### Final steps

- Check the tracker issue again
- tick of the check boxes for the release process
- close the tracker issue
- upload the signed installers from INRIA

# How to create minor releases

This depends a lot on what has been changed. Below are a few scenarios (updated as they happen).

## Changes only in "from sources builds"

It happens that the from sources builds fail after a release. In this case the pick files and the installers can be kept.

In this case the recommended procedure is as follows:

- Merge the required fixes

- Search and replaces the old release code, e.g. "2024.10.0" with the new release code "2025.01.0".
  - Also replaces in `release_process.md` where this sometimes doesn't look appropriate because it talks about major releases, but this way it is easier to keep this up to date.
  - Make sure to *not* replace in:
    - this paragraph
    - the release notes in `coq-platform-main/README.md`
  - Double check that the release code in `coq-platform-main/package_picks/coq_platform_release.sh` has been updated.

- Add a new release entry to `coq-platform-main/README.md`.

- Do a PR of these changes and merge (after CI did run through)

- Tag with an appropriate tag message, e.g.
  ```
  git tag 2025.01.0 -a -m "Release 2025.01.0 with adjustments to opam 2.3.0 (unmodified pick 8.19~2024.10)"
  git push --tags
  ```
