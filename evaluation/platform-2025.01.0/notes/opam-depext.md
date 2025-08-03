# Depext and opam versions

From opam 2.1.0 on, depext is integrated into opam.
Depext dependencies are treated in the same way as any other dependency.

The Coq Platforms scripts define a shell variable COQ_PLATFORM_OPAM_DEPEXT_COMMAND,
which is 'depext' for opam < 2.1.0 and 'install --confirm-level=unsafe-yes --depext-only'
for opam >= 2.1.0, so that one can use opam $COQ_PLATFORM_OPAM_DEPEXT_COMMAND to
install depext packages.

# general usag examples

## opam < 2.1.0

opam install depext
opam depext frama-c

## opam >= 2.1.0

opam install frama-c

# depext supported systems:

https://github.com/ocaml-opam/opam-depext

## depext on cygwin:

https://fdopen.github.io/opam-repository-mingw/depext-cygwin/

