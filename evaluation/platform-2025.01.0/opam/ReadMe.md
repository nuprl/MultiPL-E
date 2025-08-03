# Coq Platform opam patch repositories

This folder contains opam patches for the Coq Platform. The sub folder are
intended for patches for the following three opam repositories:

- `opam-repository`: (https://github.com/ocaml/opam-repository)
- `opam-coq-archive`: (https://github.com/coq/opam-coq-archive)
  - `released`: (https://github.com/coq/opam-coq-archive/tree/master/released)
  - `extra-dev`: (https://github.com/coq/opam-coq-archive/tree/master/extra-dev)

These patch repositories are mostly used during Coq Platform development, which
is mostly testing and fixing opam files.
Sometimes packages remain in releases which could not be merged upstream.

## Use for package maintainers

The opam patch repository can be very useful for package maintainers.
New opam files can be put into the patch repository folder and tested with the
Coq Platform before they are released.

The `opam-repository` and `opam-coq-archive/released` repositories are always
registered with a Coq Platform switch with a higher priority than the online
repositories.
The `opam-coq-archive/extra-dev` repository is only registered for switches of
Coq Platform variants, which set `COQ_PLATFORM_USE_DEV_REPOSITORY='Y'` in their
package list file.

So if a developers wants to test an opam file, all (s)he needs to do is to
copy the opam file into the package folder - using the same folder structure
as any opam package repositoty - and call `opam update`. Direct uses of
`opam install` as well as Coq Platform scripts will use this package then.
