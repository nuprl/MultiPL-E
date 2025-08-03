# ATTENTION RELEASE IN PROGRESS

**We are currently preparing a release, which has the effect that some links already refer to the new tag, even though this does not exist as yet.**

**In case you experience dead links, please replace `2025.01.0` with `2024.10.0`.**

# Overview

The [Coq proof assistant](https://coq.inria.fr) provides a formal language
to write mathematical definitions, executable algorithms, and theorems, together
with an environment for semi-interactive development of machine-checked proofs.

The **Coq Platform** is a distribution of Coq together with a selection of
libraries and plugins. The main goal of the Coq Platform is to provide a
distribution for developing and teaching with Coq that is:

- operating system independent
- dependable
- easy to install
- comprehensive

See the [Charter](charter.md) for more on the Platform concept, and
[CEP 52](https://github.com/coq/ceps/blob/master/text/052-platform-release-cycle.md)
for more on how the Platform is related to the Coq release cycle.

The Coq Platform is based on the OCaml package manager **opam** and provides a set
of scripts to compile and/or install opam, Coq and the platform contents on macOS,
Windows and many Linux distributions in a reliable way with consistent results.
In addition **pre-compiled binary packages** or **installers** are provided for **macOS** and
**Windows** (Docker is in preparation). Note that snap for Linux is no longer supported
(the maintenance effort was too high).

The Coq Platform supports installing several versions of Coq - also in parallel,
e.g., for porting developments from one version of Coq to another. For the
previous release version of Coq, Coq Platform provides extended and updated
package picks which are as much as possible compatible to the pick of the latest
release version of Coq. For this reason for some Coq versions several different
package picks are provided.

The table below contains links to the README files for the supported versions
of Coq and libraries. Each README file contains a list of included packages with
detailed information for each package.

- [Coq 8.20.1 (released Jan 2025) with the first package pick from Jan 2025](doc/README~8.20~2025.01.md)
- [Coq 8.19.2 (released Jun 2024) with the first package pick from Oct 2024](doc/README~8.19~2024.10.md)
- [Coq 8.18.0 (released Sep 2023) with the first package pick from Nov 2023](doc/README~8.18~2023.11.md)
- [Coq 8.18.0 (released Sep 2023) with a package pick based on mathcomp 2.1](doc/README~8.18~mc2.md)
- [Coq 8.17.1 (released Jun 2023) with the first package pick from Aug 2023](doc/README~8.17~2023.08.md)
- [Coq 8.16.1 (released Nov 2022) with an updated package pick from Aug 2023](doc/README~8.16~2023.08.md)
- [Coq 8.16.1 (released Nov 2022) with the first package pick from Sep 2022](doc/README~8.16~2022.09.md)
- [Coq 8.15.2 (released Jun 2022) with an updated package pick from Sep 2022](doc/README~8.15~2022.09.md)
- [Coq 8.15.2 (released Jun 2022) with the first package pick from Apr 2022](doc/README~8.15~2022.04.md)
- [Coq 8.14.1 (released Nov 2021) with an updated package pick from Apr 2022](doc/README~8.14~2022.04.md)
- [Coq 8.14.1 (released Nov 2021) with the first package pick from Jan 2022](doc/README~8.14~2022.01.md)
- [Coq 8.13.2 (released Apr 2021) with an updated package pick from Jan 2022](doc/README~8.13~2022.01.md)
- [Coq 8.13.2 (released Apr 2021) with an updated package pick from Sep 2021](doc/README~8.13~2021.09.md)
- [Coq 8.13.2 (released Apr 2021) with original package pick from Feb 2021](doc/README~8.13~2021.02.md)
- [Coq 8.12.2 (released Dec 2020)](doc/README~8.12.md)
- [Coq Developer (latest developer branch)](doc/README~dev.md)

If you have questions on the Coq Platform, please contact us on zulip chat [Coq-Platform & users](https://coq.zulipchat.com/#narrow/stream/250632-Coq-Platform.20devs.20.26.20users)

## Installation

The Coq platform is the recommended way to install Coq for both beginners and experts.
Beginners are encouraged to use one of the binary installers. Experienced users are advised to run the scripts provided by the Coq platform to install from sources as this will allow them to install additional packages with opam.
Please refer to the ReadMe file for your operating system, which contains information on both methods respectively.

- macOS: see [README_macOS](doc/README_macOS.md).
- Windows: see [README_Windows](doc/README_Windows.md)
- Linux: see [README_Linux](doc/README_Linux.md).

## Additional information

<details><summary><font size="+1">Licenses</font></summary>

The Coq Platform setup scripts and the selection of package recipes and patches are licensed Creative Commons CC0.
This license does **not** apply to the packages installed by the Coq Platform.
The README files linked above provide license information for each package.
This information is also available as .CSV files here [doc](doc).
Please note that the license information is obtained from opam.
The Coq Platform team does no double check this information.

</details>

<details><summary><font size="+1">Release notes / changelog</font></summary>

## Changes in 2025.01.0

- added new pick `8.20~2025.01`
- added package `vscoq-language-server` to picks `8.20~2025.01` and `8.19~2024.10`
- Windows: link DLLs into opam switch bin folder, so that binaries can be called from outside cygwin
  - this enables the use of a Windows "from sources" installation outside of cygwin without setting PATH
  - added script `windows/link_shared_libraries.sh` to hard link cygwin provided DLLs into the opam switch bin folder
  - call this script automatically during cygwin setup

## Changes in 2024.10.1

This is a "source only" bugfix release which addresses changes in the opam file format in opam 2.3.0.
The installers and package pick lists are unmodified from the previous release.

## Changes in 2024.10.0

- added new pick 8.19~2024.10
- the MacOS installers for Apple silicon (ARM) are now fully supported (no longer experimental)
- on Windows enabled long path support by
  - using a manifest where this is enabled during build of all executables
  - checking in the script if the registry key is set
  - Not that this is only required during build - if using an installer the provided binaries still have this enabled in the manifest, but the user is not asked to enable it in the registry
- on Windows set the stack size of `ocamlc`` to 64MB (essentially by patching the binary) - this allows to build fiat-crypto
  - note that `coqc` is not pacthed in this way - it can be done if needed. See the folder windows/set_stack_size and the script shell_scripts/install_ocaml_stacksize.sh
  - also note that on Windows any stack size can be set in case this should be required (MacOS has a hard limit of 64MB, though (as of macOS Sonoma) so try to avoid this to stay portable)
- on Windows re-enables coq-fiat-crypto
  - on Windows no packages are excluded any more except for `coq-hammer` which heavily uses Unix style `fork`
- support for snap has been removed
  - there is currently no known method to build snaps in case the build process requires more than 2GB of RAM
  - the overall maintenance effort for snap was very high
  - we are looking for a replacement - suggestions welcome

## Changes in 2023.11.0

- when using the build from sources script on Windows the root folders changed to shorten the path length (e.g. coq-serapi had build issues cause by long path names)
  - the opam path is now `<cygroot>/opam`  instead of `<cygroot>/home/<user>/.opam`
  - the platform path is now `<cygroot>/platform`  instead of `<cygroot>/home/<user>/platform`
  - the (longest) recommended cygwin root path is now `C:\bin\cygwin_coq_platform` or `C:\bin\cygw32_coq_platform`
- added new pick 8.18~2023.11
- added new pick 8.18~mc2
- the doc folder now contains an opam package dependency graph for all picks, e.g. [doc/DependencyGraph~8.18~2023.11.pdf]
- coq-ott has been added back on Windows
- coq-fiat-crypto is still removed on Windows, since version 0.0.24 results in stack overflows - there is no good work around for this - we recommend to use the prior pick 8.16~2022.09

**ATTENTION**:

Please see the [Pick Readme 8.18~2023.11](doc/README~8.18~2023.11.md) and [Pick Readme 8.18~mc2](doc/README~8.18~mc2.md) for details on the package list.

## Changes in 2023.03.0

- Added new picks 8.17~2023.08 and 8.16~2023.08
- coq-ott has been removed on Windows, since version 0.33 has issues there - if you need coq-ott we recommend to install version 0.32 via opam on Windows
- coq-fiat-crypto has been removed on Windows, since version 0.0.20 results in a stack overflows - there is no good work around for this - we recommend to use the previous pick 8.16~2022.09 

Please see the [Pick Readme](doc/README~8.17~2023.08.md) for details on the package list.

## Changes in 2022.09.1

- Changed picks 8.16~2022.09 and 8.15~2022.09 from beta to release
- Updated pick 8.16~2022.09 to Coq version 8.16.1
  - Coq and CoqIDE 8.16.1 contain various substantial fixes over 8.16.0

Please see the [Pick Readme](doc/README~8.16~2022.09.md) for details on the final package list.

## Changes in 2022.09.0

- added a "coq-shell" on macOS, Windows and Snap installers
  - the coq-shell starts a shell or CMD window with environment set to use the installed Coq
  - on macOS, the DMG installer contains a `coq-shell.command` file one can copy e.g. to the desktop - see [macOS](doc/README_macOS.md) for details
  - on Windows a `coq-shell.bat` file is installed and added to the start menu - see [Windows](doc/README_Windows.md)
  - on Linux/Snap there are two methods to start a Coq shell - see [Linux](doc/README_Linux.md)
- added a `coq-env.sh` file on macOS and Linux/Snap to be used with `eval` - see [macOS](doc/README_macOS.md) and [Linux](doc/README_Linux.md) for details
- on macOS the installer should now work for macOS down to version 10.13 - this is not much tested, though - bug reports are welcome
- many small usability improvements and bug fixes
- beta package pick for Coq 8.16.0 with many package version updates and these additions:
  - added `coq-itauto.8.16.0` to the "full" level
  - moved `coq-mathcomp-algebra-tactics` from "extended" to "full" level after update to `1.0.0`
  - added `coq-mathcomp-word.1.1` to the "full" level
  - added `coq-metacoq.1.1+8.16` to the "extended" level
  - added `coq-fiat-crypto.0.0.15` to the "extended" level
  - added `coq-bedrock2.0.0.3` to the "extended" level
  - added `coq-bedrock2-compiler.0.0.3` to the "extended" level
  - added `coq-rupicola.0.0.5` to the "extended" level
  - added `coq-coqutil.0.0.2` to the "extended" level
  - added `coq-rewriter.0.0.6` to the "extended" level
  - added `coq-riscv.0.0.2` to the "extended" level
  - removed the Flocq3 based packages

Please see the [Pick Readme](doc/README~8.16~2022.09~beta1.md) for details on new and updated packages.

**Note on `coq-quickchick`**: QuickChick requires an OCaml compiler to run. The binary installers for Coq Platform do not
provide OCaml, so QuickChick does not work with the binary installers for macOS, Windows and Snap.
It is recommended to use the "compile from sources" method if you want to use QuickChick.
An alternative method is to install OCaml by other means and have it in the PATH, but this method is not supported by the Coq Platform team.
We plan to add an OCaml compiler to the binary installers in the next release.

**Note on `coq-serapi`**: Installed versions (not compiled from sources versions) of serapi tools might require a `--coqlib=$(coqc -where)` or equivalent option to run.

## Changes in 2022.04.0 / 2022.04.1

- release package pick for Coq 8.15.2 with many package version updates
- a package pick for Coq 8.14.1, which is as much as possible compatible with the 8.15.2 pick
- re-enabled QuickChick on Windows (please see notes below)
- added `coq-ott` and `ott` to the "full" level
- added `coq-relation-algebra` to the "full" level
- added `coq-mathcomp-algebra-tactics` to the "extended" level
- added `coq-extructures` to the "extended" level
- many small usability improvements and fixes

Please see the [Pick Readme](doc/README~8.15~2022.04.md) for details on new and updated packages.

**Note on macOS**: CoqIDE was previously wrapped in a shell script to set the environment, which had the effect that
it could not access the `documents` folder. This script has been replaced with a simple C program, so this should work now.

**Note on `coq-flocq`**: there is a new version 4.0 for `coq-flocq` which is **not compatible** with the previous 3.X versions.
Since some packages are not yet compatible with Flocq 4.0, notably `coq-compcert`, the 2022.04 picks contain both,
`coq-flocq.4.0.0` and `coq-flocq.3.4.3`. Since one cannot install two version of one package, a new package called `coq-flocq3`
has been added which uses `Flocq3` rather than `Flocq` as logical path. This way Flocq 3.X can be selected by using `Flocq3`
in the `Require` commands and Flocq 4.X can be selected by using `Flocq` in the `Require` commands.
The package `coq-compcert` has been patched to require `Flocq3`.
For convenience the proof automation packages used for float proofs, `coq-gappa` and `coq-interval` are also available in
a Flocq 3.X and Flocq 4.X variant. The Flocq 4.X variants have the usual logical path, the 3.X variants use the logical paths
`IntervalFlocq3` and `GappaFlocq3`.

**Note on `coq-quickchick`**: QuickChick requires an OCaml compiler to run. The binary installers for Coq Platform do not
provide OCaml, so QuickChick does not work with the binary installers for macOS, Windows and Snap.
It is recommended to use the "compile from sources" method if you want to use QuickChick.
An alternative method is to install OCaml by other means and have it in the PATH, but this method is not supported by the Coq Platform team.
We plan to add an OCaml compiler to the binary installers in the next release.

## Changes in 2022.01.0

- release package pick for Coq 8.14.0 + updated mostly compatible package pick for Coq 8.13.2
- beta package pick for Coq 8.15.0
- added `coq-hammer` (not on Windows) including the provers `z3` and `eprover`
- added prime number certificate generator `coq-coqprime-generator` including `gmp-ecm`
- disabled QuickChick on Windows (it did not really work on Windows - we try to make it work in the next release)

## Changes in 2021.09.0

- support for multiple versions of Coq (currently 8.12.2, 8.13.2, 8.14+rc1, dev)
- parallel installation of several versions of Coq is possible - each version creates a separate opam switch
- new substantially extended package pick for Coq 8.13.2 (the original pick from 2021.02 is also available)
- new beta pick for Coq 8.14+rc1 - as close as possible to the updated pick for Coq 8.13.2

## Changes in 2021.02.2

- support for opam 2.1.0 (which integrates the opam system dependency manager *depext* - this needed a few adjustments)
- fix issues with Cygwin binutils
- various minor fixes for the snap package (support gappa, clightgen, ...)
- various minor fixes to the Windows installer (add icon for CoqIDE, ...)
- minor cleanup and improvements of the Coq Platform scripts
- the versions of provided Coq packages are identical to 2021.09.0

## Changes in 2021.02.1

- added DMG package / installer for macOS
- Coq and CoqIDE update to version 8.13.2 (bugfix release)
- VST updated to version 2.7.1 (bugfix release)
- new package `coq-hott` *The Homotopy Type Theory library*

</details>

<details><summary><font size="+1">Maintaining an installation</font></summary>

It is **not** recommended to `opam upgrade` a Coq Platform opam switch, although this is possible.
The Coq Platform script does not pin any packages - not even Coq.
It just requests to install a specific version, so `opam upgrade` might change a lot of packages
and you end up with something which is no longer an "official" Coq Platform.

Instead it is recommended to wait for the next release of Coq Platform and install it, which will create a new opam switch -
or if you use a binary installer on macOS or Windows, you can choose a different installation folder.
This also has the advantage that you still have the Coq Platform version you have been working with so far available,
which is useful in case you need to port some proofs from the older to the new version - which might happen.
You can remove the opam switch or uninstall an installed Coq Platform as soon as you no longer need it.

In general the Coq Platform team recommends to use the concept of opam switches generously.
If you want to do experiments, create a new switch following the instructions for creating Coq Platform package pick variants below.
You can easily switch between opam switches and do tests.
Also if you follow the package pick variants approach, you can easily share your setup with other people just by sharing the Coq Platform package pick file you created.
A Coq Platform switch requires between 1 and 3 GByte of disk space.
The current Coq 8.13.2 distribution requires 2.3 GByte on macOS.

</details>

<details><summary><font size="+1">Features of the Coq Platform</font></summary>

- fully opam based, also on Windows
- single script call to install system dependencies, opam (if not there), a fresh opam switch and the Coq Platform
- interactive (well, script based) guidance of the user through the few parameters
- one unified setup script for Windows, macOS and Linux with few operating system dependent sections only
- for Windows there is an additional wrapper batch script to setup Cygwin as build and working environment
- for Windows there is in addition a classic Windows installer mostly intended for quick installation by beginners
- for macOS a signed (but currently not yet notarized) DMG package is provided, also mostly intended for beginners
- note that snap packages for Windows are **not supported** any more
- it is easy to build variants of the provided installers with modified content
- it is supported to install several versions of Coq in parallel - each will create a separate opam switch - this is intended e.g. for porting Coq developments from older versions of Coq
- system prerequisites are installed using opam depext in a system independent manner
- the script should be fairly robust and safe - it will immediately abort on all errors not explicitly handled
- the script can be restarted if it fails - e.g because of internet or memory issues - it will not redo things it already did

</details>

<details><summary><font size="+1">Using different Coq versions in parallel</font></summary>

Especially for porting projects from an older to a newer version of Coq, Coq Platform supports to install several Coq versions in parallel.
You can also use a Coq version from a previous version of Coq Platform in parallel with a Coq version from a newer version of Coq Platform.
Each Coq version you install via the Coq Platform scripts will create a separate opam switch.

You can list the available switches with:
```
~$ opam switch
#  switch                        compiler                                              description
   CP.2025.01.0~8.12             ocaml-base-compiler.4.10.2                            Coq 8.12.2 (released Dec 2020) with the first package pick from Dec 2020
   CP.2025.01.0~8.13~2021.02     ocaml-base-compiler.4.10.2                            Coq 8.13.2 (released Apr 2021) with the first package pick from Feb 2021
   CP.2025.01.0~8.13~2021.09     ocaml-base-compiler.4.10.2                            Coq 8.13.2 (released Apr 2021) with an extended package pick from Sep 2021
   CP.2025.01.0~8.13~2022.01     ocaml-base-compiler.4.10.2                            Coq 8.13.2 (released Apr 2021) with an updated package pick from Jan 2022
   CP.2025.01.0~8.14~2022.01     ocaml-option-flambda.1,ocaml-variants.4.12.1+options  Coq 8.14.1 (released Nov 2021) with the first package pick from Jan 2022
   CP.2025.01.0~8.14~2022.04     ocaml-option-flambda.1,ocaml-variants.4.12.1+options  Coq 8.14.1 (released Nov 2021) with an updated package pick from Apr 2022
   CP.2025.01.0~8.15~2022.04     ocaml-option-flambda.1,ocaml-variants.4.13.1+options  Coq 8.15.2 (released Jun 2022) with the first package pick from Apr 2022
   CP.2025.01.0~8.15~2022.09     ocaml-option-flambda.1,ocaml-variants.4.13.1+options  Coq 8.15.2 (released Jun 2022) with an updated package pick from Sep 2022
   CP.2025.01.0~8.16~2022.09     ocaml-option-flambda.1,ocaml-variants.4.13.1+options  Coq 8.16.1 (released Nov 2022) with the first package pick from Sep 2022
   CP.2025.01.0~8.16~2023.08     ocaml-option-flambda.1,ocaml-variants.4.14.1+options  Coq 8.16.1 (released Nov 2022) with an updated package pick from from Aug 2023
   CP.2025.01.0~8.17~2023.08     ocaml-option-flambda.1,ocaml-variants.4.14.1+options  Coq 8.17.1 (released Jun 2023) with the first package pick from Aug 2023
   CP.2025.01.0~8.18~2023.11     ocaml-option-flambda.1,ocaml-variants.4.14.1+options  Coq 8.18.0 (released Sep 2023) with the first package pick from Nov 2023
   CP.2025.01.0~8.18~mc2         ocaml-option-flambda.1,ocaml-variants.4.14.1+options  Coq 8.18.0 (released Sep 2023) with a package pick based on mathcomp 2.1
   CP.2025.01.0~8.19~2024.10     ocaml-option-flambda.1,ocaml-variants.4.14.2+options  Coq 8.19.2 (released Jun 2024) with the first package pick from Oct 2024
→  CP.2025.01.0~8.20~2025.01     ocaml-option-flambda.1,ocaml-variants.4.14.2+options  Coq 8.20.1 (released Jan 2025) with the first package pick from Jan 2025
   CP.2025.01.0~dev              ocaml-option-flambda.1,ocaml-variants.4.14.2+options  Coq dev (latest master of all packages)
```

You can select the opam switch for **all shells** with e.g.:
```
~$ opam switch CP.2025.01.0~8.20~2025.01
```

You can select the opam switch for **just the current shell** with e.g.:
```
eval $(opam config env --set-switch --switch CP.2025.01.0~8.20~2025.01)
```

So you can easily open two separate shell windows, select different opam switches and start e.g. two CoqIDE instances to step through the same file with two different versions of Coq.

</details>

<details><summary><font size="+1">Installation of additional packages or package variants</font></summary>

## CompCert and VST variants

For some packages, notably CompCert and VST (the Princeton tool-chain for verification of C code), exist various variants.

By default the 64 bit variant of CompCert and the 64 bit variant of VST are installed.

You can install the 32 bit variants in addition any time later by issuing `opam install` commands, e.g.
```
opam install coq-compcert-32.3.9
opam install coq-vst-32.2.8
```
Please note that since both variants can be installed in parallel, only one, the 64 bit variant, is immediately available to Coq
without -Q and -R options.
If you want to work with the 32 bit variants, please use these options in your Coq project:
```
-Q $(coqc -where)/../coq-variant/compcert32/compcert compcert
-Q $(coqc -where)/../coq-variant/VST32/VST VST
```

**Important note:** CompCert is **not** free / open source software, but may be used for research and evaluation purposes.
Please clarify the license at [CompCert License](https://github.com/AbsInt/CompCert/blob/master/LICENSE).

## Installation of additional packages

- On Windows open a shell with `C:\<your_coq_platform_cygwin_path>\cygwin.bat`.
- On Linux or macOS open a shell in the usual way.
- Run the command `opam switch` which will show the list of available switches:
   ```
   ~$ opam switch
   #   switch                    compiler                                              description
   CP.2025.01.0~8.12             ocaml-base-compiler.4.10.2                            Coq 8.12.2 (released Dec 2020) with the first package pick from Dec 2020
   CP.2025.01.0~8.13~2021.02     ocaml-base-compiler.4.10.2                            Coq 8.13.2 (released Apr 2021) with the first package pick from Feb 2021
   CP.2025.01.0~8.13~2021.09     ocaml-base-compiler.4.10.2                            Coq 8.13.2 (released Apr 2021) with an extended package pick from Sep 2021
   CP.2025.01.0~8.13~2022.01     ocaml-base-compiler.4.10.2                            Coq 8.13.2 (released Apr 2021) with an updated package pick from Jan 2022
   CP.2025.01.0~8.14~2022.01     ocaml-option-flambda.1,ocaml-variants.4.12.1+options  Coq 8.14.1 (released Nov 2021) with the first package pick from Jan 2022
   CP.2025.01.0~8.14~2022.04     ocaml-option-flambda.1,ocaml-variants.4.12.1+options  Coq 8.14.1 (released Nov 2021) with an updated package pick from Apr 2022
   CP.2025.01.0~8.15~2022.04     ocaml-option-flambda.1,ocaml-variants.4.13.1+options  Coq 8.15.2 (released Jun 2022) with the first package pick from Apr 2022
   CP.2025.01.0~8.15~2022.09     ocaml-option-flambda.1,ocaml-variants.4.13.1+options  Coq 8.15.2 (released Jun 2022) with an updated package pick from Sep 2022
   CP.2025.01.0~8.16~2022.09     ocaml-option-flambda.1,ocaml-variants.4.13.1+options  Coq 8.16.1 (released Nov 2022) with the first package pick from Sep 2022
   CP.2025.01.0~8.16~2023.08     ocaml-option-flambda.1,ocaml-variants.4.14.1+options  Coq 8.16.1 (released Nov 2022) with an updated package pick from from Aug 2023
   CP.2025.01.0~8.17~2023.08     ocaml-option-flambda.1,ocaml-variants.4.14.1+options  Coq 8.17.1 (released Jun 2023) with the first package pick from Aug 2023
   CP.2025.01.0~8.18~2023.11     ocaml-option-flambda.1,ocaml-variants.4.14.1+options  Coq 8.18.0 (released Sep 2023) with the first package pick from Nov 2023
   CP.2025.01.0~8.18~mc2         ocaml-option-flambda.1,ocaml-variants.4.14.1+options  Coq 8.18.0 (released Sep 2023) with a package pick based on mathcomp 2.1
   CP.2025.01.0~8.19~2024.10     ocaml-option-flambda.1,ocaml-variants.4.14.2+options  Coq 8.19.2 (released Jun 2024) with the first package pick from Oct 2024
→  CP.2025.01.0~8.20~2025.01     ocaml-option-flambda.1,ocaml-variants.4.14.2+options  Coq 8.20.1 (released Jan 2025) with the first package pick from Jan 2025
   CP.2025.01.0~dev              ocaml-option-flambda.1,ocaml-variants.4.14.1+options  Coq dev (latest master of all packages)
   ```
- Choose the switch you want to change with this command (example):
    ```
    opam switch CP.2025.01.0~8.20~2025.01
    eval $(opam env)
    ```
- You can find packages with `opam list --all | grep "some keyword"`.
- You can show the description and further details on a package with `opam show "package"`.
- Install additional packages with `opam install "package"`.
- You can find some additional information on managing Coq installation with opam at [Install Coq with opam](https://coq.inria.fr/opam-using.html).

</details>

<details><summary><font size="+1">Creating package pick variants and customized installers</font></summary>

It is an intended use case of the Coq Platform to create custom variants, e.g.
for projects or lectures, by creating additional files in the [package_picks](package_picks)
folder.

For details, especially on creating custom installers for macOS and Windows see [Customized Installers](doc/FAQ-customized-installers.md).
