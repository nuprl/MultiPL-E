---
layout: default
title: Toolchains
nav_order: 500
---

# Toolchains

If you want to reproduce our results, you'll need to use roughly the
same versions of every language toolchain that we use.

The code repository has an exported [Conda environment] that will setup most
languages. Even if you don't want to use Conda, reading the file should make it
clear what versions we employed. Some of our languages are not available on
Conda or require some extra configuration. The table below will help you set
them up:

Language   | Extension | Requirements
-----------|-----------|------------------------------------
Python     | py        | Conda
JavaScript | js        | Conda
TypeScript | ts        | Conda
Java       | java      | Conda
D          | d         | Manual install (we have dmd)
C++        | cpp       | System (we have g++ 9.2.0)
R          | r         | Manually install (we use R 4.2)
Julia      | jl        | Conda
Bash       | sh        | System (we have bash 4.2)
C#         | cs        | Conda
Go         | go        | Conda
Lua        | lua       | Conda
Perl       | pl        | Conda and `cpan install Test::Deep`
php        | php       | Conda
Ruby       | rb        | Conda and `gem install test-unit`
Scala      | scala     | Manual install
Swift      | swift     | Manual install (We use Swift 5.8)
Racket     | rkt       | Manual install (We use Racket 8.2)

Some notes:

- Manually install Scala in the Conda environment, which includes
  its own JDK.
- R is almost certainly available on Conda as well. But, we happened to have it
  installed.
- The D toolchain on conda-forge is presently broken. 
  [Spack] works (`spack install dmd`).

[Spack]: https://spack.readthedocs.io/en/latest/index.html
[Conda environment]: https://github.com/nuprl/MultiPL-E/blob/main/MultiPL-E-all-toolchains.yaml