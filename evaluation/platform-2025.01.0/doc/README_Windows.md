This README presents the two standard methods to install the Coq Platform on Windows:
- using a [Windows installer](#installation-using-the-windows-installer),
- [from sources](#installation-by-compiling-from-sources-using-opam-on-cygwin), using the platform scripts.

The first method is recommended for beginners and the second one is recommended for experienced users.

# Installation using the Windows installer

This method is intended for beginners.

- Download the installer from https://github.com/coq/platform/releases (click on "Assets" at the end of a release section)
- Run the installer and follow the instructions
- In case you want to use the installed `coqc` and other tools from the command line, you have two options:
  - Use the supplied `coq-shell.bat` command - a short cut is installed in the start menu. This file opens a Windows command interpreter in which the environment variables `$PATH` and `$COQLIB` are set.
  - Run `CALL C:\my_coq_install_path\coq-shell.bat` in a command shell to set the above variables in the current command shell.

**A note to lecturers:** it is easy to create a customized Windows installer from an opam switch - see [Customized Installers](FAQ-customized-installers.md)

# Installation by compiling from sources using opam on cygwin

This method is intended for experienced users, who may want to use opam to install additional packages, beyond the standard set provided by the Coq Platform, or who need an advanced working environment with a posix shell, make, dune, ...

- In case you install **Coq Platform for the first time**:
  - Get the Coq Platform scripts via either of these methods
    - Most users should download and extract `https://github.com/coq/platform/archive/refs/tags/2025.01.0.zip`.
    - Users which intend to contribute to Coq Platform should use `git clone --branch 2025.01.0 https://github.com/coq/platform.git`.
      Please note that the scripts are CR/LF sensitive, so if you use a Windows git client (not a Cygwin git) you should set `git config --global core.autocrlf false` - which is anyway a good idea.
  - Open a DOS command window, navigate to the download folder and execute `coq_platform_make_windows.bat`.
  - This will ask for the Cygwin installation path and setup a fresh Cygwin as build host (the created Coq is MinGW and runs without Cygwin).
  - After the Cygwin setup - which takes a few minutes - the script will automatically execute the common setup shell script `coq_platform_make.sh`.
- In case you already have an **existing Coq Platform Cygwin** installation:
  - Note that it is no problem to install several version of Coq Platform in one Cygwin, as long as the Cygwin was originally
    created by the Coq Platform scripts
  - Start a cygwin shell via `C:\<your_coq_platform_Cygwin_path>\Cygwin.bat`
  - Download, clone or pull the Coq Platform:
    - Download zip and expand:
      - `wget https://github.com/coq/platform/archive/refs/tags/2025.01.0.zip`
      - `unzip 2025.01.0.zip`
      - `mv 2025.01.0 platform-2025.01.0``
      - `cd platform-2025.01.0`
    - **OR** Git clone:
      - `git clone --branch 2025.01.0 https://github.com/coq/platform.git`
      - `cd platform`
    - **OR** Git update (with existing git Coq Platform repo):
      - `cd platform`
      - `git fetch & git checkout 2025.01.0`
  - Run the main Coq Platform installation script `coq_platform_make.sh`
- The script will ask a few questions if no parameters are given and then run fully unattended.
- The build time is between 1..5 hours, depending on CPU speed and RAM size.
- In case the script aborts e.g. cause of internet issues, just rerun the batch file - it won't install Cygwin again (assuming you specify the same Cygwin destination folder).
- The script has various options for configuring paths and proxies; see `example_coq_platform_make.bat` for an example command line.
- The resulting Coq installation is opam based and best used from the Cygwin prompt (started via `C:\<your_coq_platform_Cygwin_path>\Cygwin.bat`)
- The script creates a new opam switch named e.g. CP.2025.01.0~8.20~2025.01 - the exact name depends on the Coq version and package pick you selected you selected.
  This means the script does not touch your existing opam setup unless you already have a switch of this name.
- Use the following commands at the Cygwin prompt to activate this switch after opening a new shell:
  - `opam switch CP.2025.01.0~8.20~2025.01` (note: the switch name might vary if you choose a different version of Coq - please use `opam switch` to see a list of switch names)
  - `eval $(opam env)`
  - The second step can be automated by rerunning `opam init`
- The main opam repositories for Coq and OCaml developments are already added to the created opam switch, so it should be easy to install additional Coq (or OCaml) packages.
- For OCaml packages a specially patched opam repo for Windows is added which offers a rich but reduced set of packages (not everything builds on Windows)
- CoqIDE can be started from the Cygwin shell prompt with `coqide`.
- The full installation might require up to 5 GB of disk space.

## Compiling from sources with Windows Subsystem for Linux - WSL)

This method is not officially tested but reported by users to work. Essentially you follow the instructions for Linux at [README_Linux](README_Linux.md)

# A note on **virus scanners**

There are no reports of virus scanners reporting any executable generated by the Coq Platform as virus but they sometimes lead to errors in the build process.
If a virus scanner does its work it has files and/or directories open which on Windows results in `Permission denied` errors in case a build system tries to rename a remove a folder or file. This is not a bug of the scanners but a design issue of Windows, namely that open files and folders are referenced by path names rather than inode numbers. An example error message is:
```
<><> Fetching repository information ><><><><><><><><><><><><><><><><><><><><><>
[ERROR] Could not update repository "default": "C:\\bin\\Cygwin_coqplatform_8_12_0\\bin\\mv.exe
        C:/bin/Cygwin_coqplatform_8_12_0/home/Michael/.opam/repo/default.new
        C:/bin/Cygwin_coqplatform_8_12_0/home/Michael/.opam/repo/default" exited with code 1 "/usr/bin/mv: cannot move
        'C:/bin/Cygwin_coqplatform_8_12_0/home/Michael/.opam/repo/default.new' to
        'C:/bin/Cygwin_coqplatform_8_12_0/home/Michael/.opam/repo/default': Permission denied"
[ERROR] Initial download of repository failed
```
In case this happens, it might help to simply retry and if this does not help to pause the virus scanner during the build or to exclude the Cygwin destination folder from scans. This might also help another issue with virus scanners: they can take considerable amounts of CPU time and RAM during a highly parallel build. A virus scanner from GData took about 3..4 cores (6..8 threads) of a Xeon CPU and almost 2.0 GB RAM during Coq Platform build tests. And GData seems to be on the better side - much worse resource usage slowing down a build by a factor of ten is not unheard of.

## Notes for "Windows real-time protection"

As far as we can tell this is only active if no other virus scanner is installed. If this is the case, it might be required to disable it. See [Issue #66](https://github.com/coq/platform/issues/66) for settings which did work for a user.

## Notes for "GData"

A GData virus scanner with standard settings took about 3..4 cores (6..8 threads) of a Xeon CPU and almost 2.0 GB RAM during Coq Platform build tests. For GData virus scanners it helps to disable `BEAST (Behavior Monitoring)` and `Deep Ray` in the real time protection - the resource usage is reasonable then.

## Notes on "HP Sure Sense"

The `HP Sure Sense` system has been reported to deny the download of the opam executable. See [Issue #66](https://github.com/coq/platform/issues/66) for settings which did work for a user.

## Notes on other virus scanners

In case you have advice or experience reports for other virus scanner products, please share via an issue or PR.

# Customized Installers

Especially for lecturers it might be useful to create customized installers with additional packages or a reduced package set. The scripts used to create the released Installer essentially create an installer from the current opam switch. So one can easily add or remove packages and then run the installer script. A few notes on this:

- The installer distinguishes between user selectable packages and packages which are automatically selected if needed. Dependencies between user selectable packages are also taken care of - this is done because otherwise the package list becomes much too long. The selection is done with an exclusion regexp filter.
- This method is only tested with the full platform package set. It is likely to work with many other packages, but we cannot guarantee this, since this is not testable. Please file a ticket in case a configuration does not work.
- Creating an installer only works with Cygwin as build host, not with WSL.
- You should always test the resulting installer.

In order to create an installer, open a Cygwin shell, navigate to the platform folder and run the script `windows/create_installer_windows.sh`
