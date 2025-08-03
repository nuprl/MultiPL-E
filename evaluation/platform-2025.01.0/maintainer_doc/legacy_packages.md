# Legacy packages

If a new version of a package is incompatible to previous versions and adjustments
are not trivial, it might be required in some cases to support the old and new
version in parallel in Coq Platform for a while. An example is the move from
coq-flocq.3.x to coq-flocq.4.x.

In such cases the policy is to install the legacy package in a different
logical path, e.g. Flocq3, while the new package is installed under the
established logical path, e.g. Flocq.

The renaming of the logical path might require quite a bit of patching,
especially for tactics which access Coq symbols.

## How to make a legacy opam package which installs into a different logical path

- patch the require statements for other legacy libraries used in the package source
- patch the install path in make and/or configure
- patch the logical name in coqc -Q or -R options in make and/or configure
- create smoke test kit entry
- patch the requires statements in the smoke test files

### Additional changes for plugins

- patch references to Coq symbols in the plugin OCaml code
  (usually can be found by searching for the old log path as string)
- change the name of the tactic
  (otherwise there will be two tactics with the same name)
