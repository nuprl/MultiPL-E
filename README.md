# polyglot-codegen-evaluation



Language   | Extension | Requirements
-----------+-----------+----------
Python     | py        | Conda
JavaScript | js        | Conda
TypeScript | ts        | Conda
Java       | java      | Conda
D          | d         | Manual install
C++        | cpp       | System (we have g++ 9.2.0)
R          | r         | Manually install
Julia      | jl        | Conda
Bash       | sh        | System (we have bash 4.2)
C#         | cs        | Conda
Go         | go        | ??
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
- The DMD on conda-forge is presently broken. Spack works.

