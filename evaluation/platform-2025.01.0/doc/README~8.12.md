
# Coq Platform 2025.01.0 providing Coq 8.12.2 (released Dec 2020) with the first package pick from Dec 2020

The [Coq proof assistant](https://coq.inria.fr) provides a formal language
to write mathematical definitions, executable algorithms, and theorems, together
with an environment for semi-interactive development of machine-checked proofs.

The [Coq Platform](https://github.com/coq/platform) is a distribution of the Coq
interactive prover together with a selection of Coq libraries and plugins.

The Coq Platform supports to install several versions of Coq (also in parallel).
This README file is for **Coq Platform 2025.01.0 with Coq 8.12.2**.
The README files for other versions are linked in the main [README](https://github.com/coq/platform/blob/main/README.md).

This version of Coq Platform 2025.01.0 includes Coq 8.12.2 from 12/2020. The package pick is the original package pick of Coq Platform for Coq 8.12.2. 

The OCaml version used is 4.10.2.

The Coq Platform supports four levels of installation extent:
**base**, **IDE**, **full** and **extended** and a few **optional** packages.
The sections below provide a short description of each level and the list of
packages included in each level. Packaged versions of the Coq Platform usually
contain the **extended** set with all optional packages.



**Note on non-free licenses:** The Coq Platform contains software with
**non-free licenses which do not allow commercial use without purchasing a license**,
notably the **coq-compcert** package. Please study the package licenses given
below and verify that they are compatible with your intended use in case you
plan to use these packages.

**Note on license information:**
The license information given below is obtained from opam.
The Coq Platform team does no double check this information.

**Note on multiple licenses:** 
In case several licenses are given below, it is not clearly specified what this means.
It could mean that parts of the software use one license while other parts use another license.
It could also mean that you can choose between the given licenses.
Please clarify the details with the homepage of the package.

**Note:** The package list is also available as [CSV](https://github.com/coq/platform/tree/main/doc/PackageTable~8.12.csv).

**Note:** Click on the triangle to show additional information for a package!

<br>

## **Coq Platform 2025.01.0 with Coq 8.12.2 "base level"**

The **base level** is mostly intended as a basis for custom installations using
opam and contains the following package(s):

<details>
  <summary><a href='https://coq.inria.fr/'>coq.8.12.2</a>
(8.12.2) Formal proof management system</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The Coq development team, INRIA, CNRS, and contributors.</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://coq.inria.fr/'>homepage</a>)
      (<a href='https://github.com/coq/coq/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/coq/coq.8.12.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>The Coq proof assistant provides a formal language to write<br>mathematical definitions, executable algorithms, and theorems, together<br>with an environment for semi-interactive development of machine-checked<br>proofs. Typical applications include the certification of properties of programming<br>languages (e.g., the CompCert compiler certification project and the<br>Bedrock verified low-level programming library), the formalization of<br>mathematics (e.g., the full formalization of the Feit-Thompson theorem<br>and homotopy type theory) and teaching.</dd>
  </dl>
</details>

<br>

## **Coq Platform 2025.01.0 with Coq 8.12.2 "IDE level"**

The **IDE level** adds an interactive development environment to the **base level**.

For beginners, e.g. following introductory tutorials, this level is usually sufficient.
If you install the **IDE level**, you can later add additional packages individually
via `opam install 'package-name'` or rerun the Coq Platform installation script
and choose the full or extended level.

The **IDE level** contains the following package(s):

<details>
  <summary><a href='https://coq.inria.fr/'>coqide.8.12.2</a>
(8.12.2) IDE of the Coq formal proof management system</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The Coq development team, INRIA, CNRS, and contributors.</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://coq.inria.fr/'>homepage</a>)
      (<a href='https://github.com/coq/coq/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/coqide/coqide.8.12.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>CoqIDE is a graphical user interface for interactive development<br>of mathematical definitions, executable algorithms, and proofs of theorems<br>using the Coq proof assistant.</dd>
  </dl>
</details>

<br>

## **Coq Platform 2025.01.0 with Coq 8.12.2 "full level"**

The **full level** adds many commonly used coq libraries, plug-ins and
developments.

The packages in the **full level** are mature, well maintained
and suitable as basis for your own developments.
See the Coq Platform [charter](https://github.com/coq/platform/blob/main/charter.md) for details.

The **full level** contains the following packages:

<details>
  <summary><a href='https://github.com/coq-community/aac-tactics'>coq-aac-tactics.8.12.0</a>
(8.12.0) Coq plugin providing tactics for rewriting universally quantified equations, modulo associative (and possibly commutative) operators</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Thomas Braibant Damien Pous Fabian Kunze</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0-or-later.html" target="_blank">LGPL-3.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/coq-community/aac-tactics'>homepage</a>)
      (<a href='https://github.com/coq-community/aac-tactics/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-aac-tactics/coq-aac-tactics.8.12.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This Coq plugin provides tactics for rewriting universally quantified<br>equations, modulo associativity and commutativity of some operator.<br>The tactics can be applied for custom operators by registering the<br>operators and their properties as type class instances. Many common<br>operator instances, such as for Z binary arithmetic and booleans, are<br>provided with the plugin.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/coq/bignums'>coq-bignums.8.12.0</a>
(8.12.0) Bignums, the Coq library of arbitrary large numbers</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Laurent Théry - Benjamin Grégoire - Arnaud Spiwack - Evgeny Makarov - Pierre Letouzey</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/coq/bignums'>homepage</a>)
      (<a href='https://github.com/coq/bignums/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-bignums/coq-bignums.8.12.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Provides BigN, BigZ, BigQ that used to be part of Coq standard library <lt; 8.7.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://coquelicot.saclay.inria.fr/'>coq-coquelicot.3.1.0</a>
(3.1.0) A Coq formalization of real analysis compatible with the standard library</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Sylvie Boldo <lt;sylvie.boldo@inria.fr>gt; - Catherine Lelay <lt;catherine.lelay@inria.fr>gt; - Guillaume Melquiond <lt;guillaume.melquiond@inria.fr>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0-or-later.html" target="_blank">LGPL-3.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://coquelicot.saclay.inria.fr/'>homepage</a>)
      (<a href='https://gitlab.inria.fr/coquelicot/coquelicot/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-coquelicot/coq-coquelicot.3.1.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/LPCIC/coq-elpi'>coq-elpi.1.5.1</a>
(1.5.1) Elpi extension language for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Enrico Tassi</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-or-later.html" target="_blank">LGPL-2.1-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/LPCIC/coq-elpi'>homepage</a>)
      (<a href='https://github.com/LPCIC/coq-elpi/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-elpi/coq-elpi.1.5.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Coq-elpi provides a Coq plugin that embeds ELPI.<br>It also provides a way to embed Coq'apos;s terms into λProlog using<br>the Higher-Order Abstract Syntax approach<br>and a way to read terms back.  In addition to that it exports to ELPI a<br>set of Coq'apos;s primitives, e.g. printing a message, accessing the<br>environment of theorems and data types, defining a new constant and so on.<br>For convenience it also provides a quotation and anti-quotation for Coq'apos;s<br>syntax in λProlog.  E.g. `{{nat}}` is expanded to the type name of natural<br>numbers, or `{{A ->gt; B}}` to the representation of a product by unfolding<br>the `->gt;` notation. Finally it provides a way to define new vernacular commands<br>and new tactics.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://mattam82.github.io/Coq-Equations'>coq-equations.1.2.3+8.12</a>
(1.2.3+8.12) A function definition package for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Matthieu Sozeau <lt;matthieu.sozeau@inria.fr>gt; - Cyprien Mangin <lt;cyprien.mangin@m4x.org>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://mattam82.github.io/Coq-Equations'>homepage</a>)
      (<a href='https://github.com/mattam82/Coq-Equations/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-equations/coq-equations.1.2.3+8.12/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Equations is a function definition plugin for Coq, that allows the<br>definition of functions by dependent pattern-matching and well-founded,<br>mutual or nested structural recursion and compiles them into core<br>terms. It automatically derives the clauses equations, the graph of the<br>function and its associated elimination principle.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/coq-community/coq-ext-lib'>coq-ext-lib.0.11.2</a>
(0.11.2) A library of Coq definitions, theorems, and tactics</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Gregory Malecha</dd>
    <dt><b>license</b></dt><dd> BSD - see <a href="https://github.com/coq-community/coq-ext-lib" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/coq-community/coq-ext-lib'>homepage</a>)
      (<a href='https://github.com/coq-community/coq-ext-lib/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-ext-lib/coq-ext-lib.0.11.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>A collection of theories and plugins that may be useful in other Coq developments.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://flocq.gitlabpages.inria.fr/'>coq-flocq.3.3.1</a>
(3.3.1) A formalization of floating-point arithmetic for the Coq system</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Sylvie Boldo <lt;sylvie.boldo@inria.fr>gt; - Guillaume Melquiond <lt;guillaume.melquiond@inria.fr>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0-or-later.html" target="_blank">LGPL-3.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://flocq.gitlabpages.inria.fr/'>homepage</a>)
      (<a href='https://gitlab.inria.fr/flocq/flocq/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-flocq/coq-flocq.3.3.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://gappa.gitlabpages.inria.fr/'>coq-gappa.1.4.4</a>
(1.4.4) A Coq tactic for discharging goals about floating-point arithmetic and round-off errors using the Gappa prover</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Guillaume Melquiond <lt;guillaume.melquiond@inria.fr>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0-or-later.html" target="_blank">LGPL-3.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://gappa.gitlabpages.inria.fr/'>homepage</a>)
      (<a href='https://gitlab.inria.fr/gappa/coq/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-gappa/coq-gappa.1.4.4/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/math-comp/hierarchy-builder'>coq-hierarchy-builder.0.10.0</a>
(0.10.0) Hierarchy Builder</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Cyril Cohen Kazuhiko Sakaguchi Enrico Tassi</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/math-comp/hierarchy-builder'>homepage</a>)
      (<a href='https://github.com/math-comp/hierarchy-builder/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-hierarchy-builder/coq-hierarchy-builder.0.10.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>High level commands to declare and evolve a hierarchy based on packed classes.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://coqinterval.gitlabpages.inria.fr/'>coq-interval.4.0.0</a>
(4.0.0) A Coq tactic for proving bounds on real-valued expressions automatically</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Guillaume Melquiond <lt;guillaume.melquiond@inria.fr>gt; - Érik Martin-Dorel <lt;erik.martin-dorel@irit.fr>gt; - Pierre Roux <lt;pierre.roux@onera.fr>gt; - Thomas Sibut-Pinote <lt;thomas.sibut-pinote@inria.fr>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-C.html" target="_blank">CECILL-C</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://coqinterval.gitlabpages.inria.fr/'>homepage</a>)
      (<a href='https://gitlab.inria.fr/coqinterval/interval/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-interval/coq-interval.4.0.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/'>coq-mathcomp-algebra.1.11.0</a>
(1.11.0) Mathematical Components Library on Algebra</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O'apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/'>homepage</a>)
      (<a href='https://github.com/math-comp/math-comp/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-mathcomp-algebra/coq-mathcomp-algebra.1.11.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains definitions and theorems about discrete<br>(i.e. with decidable equality) algebraic structures : ring, fields,<br>ordered fields, real fields,  modules, algebras, integers, rational<br>numbers, polynomials, matrices, vector spaces...</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/math-comp/bigenough'>coq-mathcomp-bigenough.1.0.0</a>
(1.0.0) A small library to do epsilon - N reasonning</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Cyril Cohen <lt;cyril.cohen@inria.fr>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/math-comp/bigenough'>homepage</a>)
      (<a href='https://github.com/math-comp/bigenough/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-mathcomp-bigenough/coq-mathcomp-bigenough.1.0.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>The package contains a package to reasoning with big enough objects<br>(mostly natural numbers). This package is essentially for backward<br>compatibility purposes as `bigenough` will be subsumed by the near<br>tactics. The formalization is based on the Mathematical Components<br>library.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/'>coq-mathcomp-character.1.11.0</a>
(1.11.0) Mathematical Components Library on character theory</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O'apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/'>homepage</a>)
      (<a href='https://github.com/math-comp/math-comp/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-mathcomp-character/coq-mathcomp-character.1.11.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains definitions and theorems about group<br>representations, characters and class functions.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/'>coq-mathcomp-field.1.11.0</a>
(1.11.0) Mathematical Components Library on Fields</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O'apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/'>homepage</a>)
      (<a href='https://github.com/math-comp/math-comp/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-mathcomp-field/coq-mathcomp-field.1.11.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains definitions and theorems about field extensions,<br>galois theory, algebraic numbers, cyclotomic polynomials...</dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/'>coq-mathcomp-fingroup.1.11.0</a>
(1.11.0) Mathematical Components Library on finite groups</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O'apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/'>homepage</a>)
      (<a href='https://github.com/math-comp/math-comp/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-mathcomp-fingroup/coq-mathcomp-fingroup.1.11.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains definitions and theorems about finite groups,<br>group quotients, group morphisms, group presentation, group action...</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/math-comp/finmap'>coq-mathcomp-finmap.1.5.0</a>
(1.5.0) Finite sets, finite maps, finitely supported functions, orders</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Cyril Cohen <lt;cyril.cohen@inria.fr>gt; - Kazuhiko Sakaguchi <lt;kazuhiko.sakaguchi@inria.fr>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/math-comp/finmap'>homepage</a>)
      (<a href='https://github.com/math-comp/finmap/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-mathcomp-finmap/coq-mathcomp-finmap.1.5.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library is an extension of mathematical component in order to<br>support finite sets and finite maps on choicetypes (rather that finite<br>types). This includes support for functions with finite support and<br>multisets. The library also contains a generic order and set libary,<br>which will be used to subsume notations for finite sets, eventually.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/math-comp/real-closed'>coq-mathcomp-real-closed.1.1.1</a>
(1.1.1) Mathematical Components Library on real closed fields</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Cyril Cohen  Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/math-comp/real-closed'>homepage</a>)
      (<a href='https://github.com/math-comp/real-closed/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-mathcomp-real-closed/coq-mathcomp-real-closed.1.1.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains definitions and theorems about real closed<br>fields, with a construction of the real closure and the algebraic<br>closure (including a proof of the fundamental theorem of algebra). It<br>also contains a proof of decidability of the first order theory of<br>real closed field, through quantifier elimination.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/'>coq-mathcomp-solvable.1.11.0</a>
(1.11.0) Mathematical Components Library on finite groups (II)</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O'apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/'>homepage</a>)
      (<a href='https://github.com/math-comp/math-comp/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-mathcomp-solvable/coq-mathcomp-solvable.1.11.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains more definitions and theorems about finite groups.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/'>coq-mathcomp-ssreflect.1.11.0</a>
(1.11.0) Small Scale Reflection</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O'apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/'>homepage</a>)
      (<a href='https://github.com/math-comp/math-comp/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-mathcomp-ssreflect/coq-mathcomp-ssreflect.1.11.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library includes the small scale reflection proof language<br>extension and the minimal set of libraries to take advantage of it.<br>This includes libraries on lists (seq), boolean and boolean<br>predicates, natural numbers and types with decidable equality,<br>finite types, finite sets, finite functions, finite graphs, basic arithmetics<br>and prime numbers, big operators</dd>
  </dl>
</details>

<details>
  <summary><a href='https://gitlab.inria.fr/fpottier/menhir'>coq-menhirlib.20200624</a>
(20200624) A support library for verified Coq parsers produced by Menhir</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jacques-Henri Jourdan <lt;jacques-henri.jourdan@lri.fr>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0-or-later.html" target="_blank">LGPL-3.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://gitlab.inria.fr/fpottier/menhir'>homepage</a>)
      (<a href='mailto:jacques-henri.jourdan@lri.fr'>bug reports (email)</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-menhirlib/coq-menhirlib.20200624/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/Mtac2/Mtac2'>coq-mtac2.1.3+8.12</a>
(1.3+8.12) Mtac2: Typed Tactics for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Beta Ziliani <lt;beta.ziliani@gmail.com>gt; - Jan-Oliver Kaiser <lt;janno@mpi-sws.org>gt; - Robbert Krebbers <lt;mail@robbertkrebbers.nl>gt; - Yann Régis-Gianas <lt;yrg@pps.univ-paris-diderot.fr>gt; - Derek Dreyer <lt;dreyer@mpi-sws.org>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/Mtac2/Mtac2'>homepage</a>)
      (<a href='https://github.com/Mtac2/Mtac2/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-mtac2/coq-mtac2.1.3+8.12/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/QuickChick/QuickChick'>coq-quickchick.1.4.0</a>
(1.4.0) Randomized Property-Based Testing Plugin for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Leonidas Lampropoulos  - Zoe Paraskevopoulou  - Maxime Denes  - Catalin Hritcu  - Benjamin Pierce  - Li-yao Xia  - Arthur Azevedo de Amorim  - Yishuai Li  - Antal Spector-Zabusky </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/QuickChick/QuickChick'>homepage</a>)
      (<a href='https://github.com/QuickChick/QuickChick/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-quickchick/coq-quickchick.1.4.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/Lysxia/coq-simple-io'>coq-simple-io.1.4.0</a>
(1.4.0) IO monad for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Li-yao Xia</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/Lysxia/coq-simple-io'>homepage</a>)
      (<a href='https://github.com/Lysxia/coq-simple-io/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-simple-io/coq-simple-io.1.4.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library provides tools to implement IO programs directly in Coq, in a<br>similar style to Haskell. Facilities for formal verification are not included.<br><br>IO is defined as a parameter with a purely functional interface in Coq,<br>to be extracted to OCaml. Some wrappers for the basic types and functions in<br>the OCaml Pervasives module are provided. Users are free to define their own<br>APIs on top of this IO type.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/unicoq/unicoq'>coq-unicoq.1.5+8.12</a>
(1.5+8.12) An enhanced unification algorithm for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Matthieu Sozeau <lt;matthieu.sozeau@inria.fr>gt; - Beta Ziliani <lt;beta@mpi-sws.org>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/unicoq/unicoq'>homepage</a>)
      (<a href='https://github.com/unicoq/unicoq/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-unicoq/coq-unicoq.1.5+8.12/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://gitlab.inria.fr/gappa/gappa'>gappa.1.3.5</a>
(1.3.5) Tool intended for formally proving properties on numerical programs dealing with floating-point or fixed-point arithmetic</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Guillaume Melquiond</dd>
    <dt><b>license</b></dt><dd> CECILL - see <a href="https://gitlab.inria.fr/gappa/gappa" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://gitlab.inria.fr/gappa/gappa'>homepage</a>)
      (<a href='https://gitlab.inria.fr/gappa/gappa/-/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/gappa/gappa.1.3.5/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='http://gitlab.inria.fr/fpottier/menhir'>menhir.20200624</a>
(20200624) An LR(1) parser generator</summary>
  <dl>
    <dt><b>authors</b></dt><dd>François Pottier <lt;francois.pottier@inria.fr>gt; - Yann Régis-Gianas <lt;yrg@pps.univ-paris-diderot.fr>gt;</dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="http://gitlab.inria.fr/fpottier/menhir" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://gitlab.inria.fr/fpottier/menhir'>homepage</a>)
      (<a href='mailto:menhir@inria.fr'>bug reports (email)</a>)
      (<a href='https://opam.ocaml.org/packages/menhir/menhir.20200624/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<br>

## **Coq Platform 2025.01.0 with Coq 8.12.2 "optional packages"**

The **optional** packages have the same maturity and maintenance level as the
packages in the full level, but either take a rather long time to build or have
a **non open source license** or depend on packages with non open source license.

The interactive installation script and the Windows installer explicitly ask
if you want to install these packages.

The macOS and snap installation bundles always include these packages.

The following packages are **optional**:

<details>
  <summary><a href='http://compcert.inria.fr/'>coq-compcert.3.7+8.12~coq_platform</a>
(3.7+8.12~coq_platform) The CompCert C compiler (using coq-platform supplied version of Flocq)</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Xavier Leroy <lt;xavier.leroy@inria.fr>gt;</dd>
    <dt><b>license</b></dt><dd> INRIA Non-Commercial License Agreement - see <a href="http://compcert.inria.fr/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://compcert.inria.fr/'>homepage</a>)
      (<a href='https://github.com/AbsInt/CompCert/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-compcert/coq-compcert.3.7+8.12~coq_platform/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='http://vst.cs.princeton.edu/'>coq-vst.2.6</a>
(2.6) Verified Software Toolchain</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Andrew W. Appel - Lennart Beringer - Sandrine Blazy - Qinxiang Cao - Santiago Cuellar - Robert Dockins - Josiah Dodds - Nick Giannarakis - Samuel Gruetter - Aquinas Hobor - Jean-Marie Madiot - William Mansky</dd>
    <dt><b>license</b></dt><dd> <a href="https://raw.githubusercontent.com/PrincetonUniversity/VST/master/LICENSE" target="_blank">link</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://vst.cs.princeton.edu/'>homepage</a>)
      (<a href='https://github.com/PrincetonUniversity/VST/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/released/packages/coq-vst/coq-vst.2.6/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>The software toolchain includes static analyzers to check assertions about your program; optimizing compilers to translate your program to machine language; operating systems and libraries to supply context for your program. The Verified Software Toolchain project assures with machine-checked proofs that the assertions claimed at the top of the toolchain really hold in the machine-language program, running in the operating-system context.</dd>
  </dl>
</details>

<br>

## **Coq Platform 2025.01.0 with Coq 8.12.2 "extended level"**

The **extended level** contains packages which are in a beta stage or otherwise
don't yet have the level of maturity or support required for inclusion in the
full level, but there are plans to move them to the full level in a future
release of Coq Platform. The main point of the extended level is advertisement:
users are important to bring a development from a beta to a release state.

The interactive installation script explicitly asks if you want to install these packages.
The macOS and snap installation bundles always include these packages.
The Windows installer also includes them, and they are selected by default.

The **extended level** contains the following packages:

<br>

## **Dependency packages**

In addition the dependencies listed below are partially or fully included or required during build time.
Please note, that the version numbers given are the versions of opam packages,
which do not always match with the version of the supplied packages.
E.g. some opam packages just refer to latest packages e.g. installed by MacPorts,
Homebrew or Linux system package managers.
Please refer to the linked opam package and/or your system package manager for details on what software version is used.

<details>
  <summary><a href=''>base-bigarray.base</a>
(base) </summary>
  <dl>
    <dt><b>authors</b></dt><dd></dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://opam.ocaml.org/packages/base-bigarray/base-bigarray.base/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Bigarray library distributed with the OCaml compiler</dd>
  </dl>
</details>

<details>
  <summary><a href=''>base-threads.base</a>
(base) </summary>
  <dl>
    <dt><b>authors</b></dt><dd></dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://opam.ocaml.org/packages/base-threads/base-threads.base/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Threads library distributed with the OCaml compiler</dd>
  </dl>
</details>

<details>
  <summary><a href=''>base-unix.base</a>
(base) </summary>
  <dl>
    <dt><b>authors</b></dt><dd></dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://opam.ocaml.org/packages/base-unix/base-unix.base/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Unix library distributed with the OCaml compiler</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/janestreet/base'>base.v0.15.1</a>
(v0.15.1) Full standard library replacement for OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/janestreet/base'>homepage</a>)
      (<a href='https://github.com/janestreet/base/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/base/base.v0.15.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Full standard library replacement for OCaml<br><br>Base is a complete and portable alternative to the OCaml standard<br>library. It provides all standard functionalities one would expect<br>from a language standard library. It uses consistent conventions<br>across all of its module.<br><br>Base aims to be usable in any context. As a result system dependent<br>features such as I/O are not offered by Base. They are instead<br>provided by companion libraries such as stdio:<br><br>  https://github.com/janestreet/stdio</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/Chris00/ocaml-cairo'>cairo2.0.6.4</a>
(0.6.4) Binding to Cairo, a 2D Vector Graphics Library</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Christophe Troestler <lt;Christophe.Troestler@umons.ac.be>gt; - Pierre Hauweele <lt;pierre@hauweele.net>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0.html" target="_blank">LGPL-3.0</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/Chris00/ocaml-cairo'>homepage</a>)
      (<a href='https://github.com/Chris00/ocaml-cairo/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/cairo2/cairo2.0.6.4/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This is a binding to Cairo, a 2D graphics library with support for<br>multiple output devices. Currently supported output targets include<br>the X Window System, Quartz, Win32, image buffers, PostScript, PDF,<br>and SVG file output.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://camlp5.github.io'>camlp5.7.14</a>
(7.14) Preprocessor-pretty-printer of OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Daniel de Rauglaudre</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/BSD-3-Clause.html" target="_blank">BSD-3-Clause</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://camlp5.github.io'>homepage</a>)
      (<a href='https://github.com/camlp5/camlp5/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/camlp5/camlp5.7.14/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Camlp5 is a preprocessor and pretty-printer for OCaml programs. It also provides parsing and printing tools.<br><br>As a preprocessor, it allows to:<br><br>extend the syntax of OCaml,<br>redefine the whole syntax of the language.<br>As a pretty printer, it allows to:<br><br>display OCaml programs in an elegant way,<br>convert from one syntax to another,<br>check the results of syntax extensions.<br>Camlp5 also provides some parsing and pretty printing tools:<br><br>extensible grammars<br>extensible printers<br>stream parsers and lexers<br>pretty print module<br>It works as a shell command and can also be used in the OCaml toplevel.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/GNOME/adwaita-icon-theme'>adwaita-icon-theme.2</a>
(2) Virtual package relying on adwaita-icon-theme</summary>
  <dl>
    <dt><b>authors</b></dt><dd>GNOME devs</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0-only.html" target="_blank">LGPL-3.0-only</a> <a href="https://spdx.org/licenses/CC-BY-SA-3.0.html" target="_blank">CC-BY-SA-3.0</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/GNOME/adwaita-icon-theme'>homepage</a>)
      (<a href='https://gitlab.gnome.org/GNOME/adwaita-icon-theme/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-adwaita-icon-theme/conf-adwaita-icon-theme.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the adwaita-icon-theme package is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://www.gnu.org/software/autoconf'>autoconf.0.1</a>
(0.1) Virtual package relying on autoconf installation</summary>
  <dl>
    <dt><b>authors</b></dt><dd>https://www.gnu.org/software/autoconf/autoconf.html#maintainer</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-3.0-only.html" target="_blank">GPL-3.0-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://www.gnu.org/software/autoconf'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-autoconf/conf-autoconf.0.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the autoconf command<br>is available on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://www.gnu.org/software/automake'>automake.1</a>
(1) Virtual package relying on GNU automake</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jim Meyering - David J. MacKenzie - https://git.savannah.gnu.org/cgit/automake.git/tree/THANKS </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-2.0-or-later.html" target="_blank">GPL-2.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://www.gnu.org/software/automake'>homepage</a>)
      (<a href='https://www.gnu.org/software/automake/manual/html_node/Reporting-Bugs.html'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-automake/conf-automake.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if GNU automake is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://www.gnu.org/software/bison/'>bison.2</a>
(2) Virtual package relying on GNU bison</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Robert Corbett - Richard Stallman - Wilfred Hansen - Akim Demaille - Paul Hilfinger - Joel E. Denny - Paolo Bonzini - Alex Rozenman - Paul Eggert</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-3.0-or-later.html" target="_blank">GPL-3.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://www.gnu.org/software/bison/'>homepage</a>)
      (<a href='https://lists.gnu.org/mailman/listinfo/bug-bison'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-bison/conf-bison.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if GNU bison is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://www.boost.org'>boost.1</a>
(1) Virtual package relying on boost</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Beman Dawes, David Abrahams, et al.</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://www.boost.org'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-boost/conf-boost.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the boost library is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://cairographics.org/'>cairo.1</a>
(1) Virtual package relying on a Cairo system installation</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Keith Packard Carl Worth Behdad Esfahbod</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a> <a href="https://spdx.org/licenses/MPL-1.1.html" target="_blank">MPL-1.1</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://cairographics.org/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-cairo/conf-cairo.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the cairo lib is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://www.gnu.org/software/findutils/'>findutils.1</a>
(1) Virtual package relying on findutils</summary>
  <dl>
    <dt><b>authors</b></dt><dd>GNU Project</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-3.0-or-later.html" target="_blank">GPL-3.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://www.gnu.org/software/findutils/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-findutils/conf-findutils.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the findutils binary is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/westes/flex'>flex.2</a>
(2) Virtual package relying on GNU flex</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The Flex Project</dd>
    <dt><b>license</b></dt><dd> <a href="https://github.com/westes/flex/blob/master/COPYING" target="_blank">link</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/westes/flex'>homepage</a>)
      (<a href='https://github.com/westes/flex/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-flex/conf-flex.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if GNU flex is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/opam-repository'>g++.1.0</a>
(1.0) Virtual package relying on the g++ compiler (for C++)</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Francois Berenger</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-2.0-or-later.html" target="_blank">GPL-2.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/opam-repository'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-g++/conf-g++.1.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the g++ compiler is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://gmplib.org/'>gmp.4</a>
(4) Virtual package relying on a GMP lib system installation</summary>
  <dl>
    <dt><b>authors</b></dt><dd>nbraud</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-1.0-or-later.html" target="_blank">GPL-1.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://gmplib.org/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-gmp/conf-gmp.4/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the GMP lib is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://developer.gnome.org/'>gtk3.18</a>
(18) Virtual package relying on GTK+ 3</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The GTK Toolkit</dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="https://developer.gnome.org/" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://developer.gnome.org/'>homepage</a>)
      (<a href='https://github.com/garrigue/lablgtk/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-repository/packages/conf-gtk3/conf-gtk3.18/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if GTK+ 3 is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://projects.gnome.org/gtksourceview/'>gtksourceview3.0+2</a>
(0+2) Virtual package relying on a GtkSourceView-3 system installation</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The gtksourceview programmers</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-or-later.html" target="_blank">LGPL-2.1-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://projects.gnome.org/gtksourceview/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-repository/packages/conf-gtksourceview3/conf-gtksourceview3.0+2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if libgtksourceview-3.0-dev is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://libjpeg.sourceforge.net/'>libjpeg.1</a>
(1) Virtual package relying on a libjpeg system installation</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Bob Friesenhahn Lee Howard Frank Warmerdam</dd>
    <dt><b>license</b></dt><dd> BSD-like - see <a href="http://libjpeg.sourceforge.net/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://libjpeg.sourceforge.net/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-libjpeg/conf-libjpeg.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the libjpeg is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://www.mpfr.org/'>mpfr.3</a>
(3) Virtual package relying on library MPFR installation</summary>
  <dl>
    <dt><b>authors</b></dt><dd>http://www.mpfr.org/credit.html</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.0-or-later.html" target="_blank">LGPL-2.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://www.mpfr.org/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-mpfr/conf-mpfr.3/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the MPFR library is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://www.perl.org/'>perl.2</a>
(2) Virtual package relying on perl</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Larry Wall</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-1.0-or-later.html" target="_blank">GPL-1.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://www.perl.org/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-perl/conf-perl.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the perl program is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://www.freedesktop.org/wiki/Software/pkg-config/'>pkg-config.3</a>
(3) Check if pkg-config is installed and create an opam switch local pkgconfig folder</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Francois Berenger</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-1.0-or-later.html" target="_blank">GPL-1.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://www.freedesktop.org/wiki/Software/pkg-config/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-pkg-config/conf-pkg-config.3/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the pkg-config package is installed<br>on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://www.gnu.org/software/which/'>which.1</a>
(1) Virtual package relying on which</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Carlo Wood</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-2.0-or-later.html" target="_blank">GPL-2.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://www.gnu.org/software/which/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-which/conf-which.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the which program is installed on the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml-community/cppo'>cppo.1.6.9</a>
(1.6.9) Code preprocessor like cpp for OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Martin Jambon</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/BSD-3-Clause.html" target="_blank">BSD-3-Clause</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml-community/cppo'>homepage</a>)
      (<a href='https://github.com/ocaml-community/cppo/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/cppo/cppo.1.6.9/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Cppo is an equivalent of the C preprocessor for OCaml programs.<br>It allows the definition of simple macros and file inclusion.<br><br>Cppo is:<br><br>* more OCaml-friendly than cpp<br>* easy to learn without consulting a manual<br>* reasonably fast<br>* simple to install and to maintain</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml-dune/csexp'>csexp.1.5.2</a>
(1.5.2) Parsing and printing of S-expressions in Canonical form</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Quentin Hocquet <lt;mefyl@gruntech.org>gt; - Jane Street Group, LLC <lt;opensource@janestreet.com>gt; - Jeremie Dimino <lt;jeremie@dimino.org>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml-dune/csexp'>homepage</a>)
      (<a href='https://github.com/ocaml-dune/csexp/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/csexp/csexp.1.5.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library provides minimal support for Canonical S-expressions<br>[1]. Canonical S-expressions are a binary encoding of S-expressions<br>that is super simple and well suited for communication between<br>programs.<br><br>This library only provides a few helpers for simple applications. If<br>you need more advanced support, such as parsing from more fancy input<br>sources, you should consider copying the code of this library given<br>how simple parsing S-expressions in canonical form is.<br><br>To avoid a dependency on a particular S-expression library, the only<br>module of this library is parameterised by the type of S-expressions.<br><br>[1] https://en.wikipedia.org/wiki/Canonical_S-expressions</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/dune'>dune-configurator.3.12.1</a>
(3.12.1) Helper library for gathering system configuration</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC <lt;opensource@janestreet.com>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/dune'>homepage</a>)
      (<a href='https://github.com/ocaml/dune/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/dune-configurator/dune-configurator.3.12.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>dune-configurator is a small library that helps writing OCaml scripts that<br>test features available on the system, in order to generate config.h<br>files for instance.<br>Among other things, dune-configurator allows one to:<br>- test if a C program compiles<br>- query pkg-config<br>- import #define from OCaml header files<br>- generate config.h file</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/dune'>dune.3.12.1</a>
(3.12.1) Fast, portable, and opinionated build system</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC <lt;opensource@janestreet.com>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/dune'>homepage</a>)
      (<a href='https://github.com/ocaml/dune/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/dune/dune.3.12.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Dune is a build system that was designed to simplify the release of<br>Jane Street packages. It reads metadata from \dune\ files following a<br>very simple s-expression syntax.<br><br>Dune is fast, has very low-overhead, and supports parallel builds on<br>all platforms. It has no system dependencies; all you need to build<br>dune or packages using dune is OCaml. You don'apos;t need make or bash<br>as long as the packages themselves don'apos;t use bash explicitly.<br><br>Dune is composable; supporting multi-package development by simply<br>dropping multiple repositories into the same directory.<br><br>Dune also supports multi-context builds, such as building against<br>several opam roots/switches simultaneously. This helps maintaining<br>packages across several versions of OCaml and gives cross-compilation<br>for free.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/LPCIC/elpi'>elpi.1.11.4-1</a>
(1.11.4-1) ELPI - Embeddable λProlog Interpreter</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Claudio Sacerdoti Coen Enrico Tassi</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-or-later.html" target="_blank">LGPL-2.1-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/LPCIC/elpi'>homepage</a>)
      (<a href='https://github.com/LPCIC/elpi/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/elpi/elpi.1.11.4-1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>ELPI implements a variant of λProlog enriched with Constraint Handling Rules,<br>a programming language well suited to manipulate syntax trees with binders.<br><br>ELPI is designed to be embedded into larger applications written in OCaml as<br>an extension language. It comes with an API to drive the interpreter and <br>with an FFI for defining built-in predicates and data types, as well as<br>quotations and similar goodies that are handy to adapt the language to the host<br>application.<br><br>This package provides both a command line interpreter (elpi) and a library to<br>be linked in other applications (eg by passing -package elpi to ocamlfind).<br><br>The ELPI programming language has the following features:<br><br>- Native support for variable binding and substitution, via an Higher Order<br>  Abstract Syntax (HOAS) embedding of the object language. The programmer needs<br>  not to care about De Bruijn indexes.<br><br>- Native support for hypothetical context. When moving under a binder one can<br>  attach to the bound variable extra information that is collected when the<br>  variable gets out of scope. For example when writing a type-checker the<br>  programmer needs not to care about managing the typing context.<br><br>- Native support for higher order unification variables, again via HOAS.<br>  Unification variables of the meta-language (λProlog) can be reused to<br>  represent the unification variables of the object language. The programmer<br>  does not need to care about the unification-variable assignment map and<br>  cannot assign to a unification variable a term containing variables out of<br>  scope, or build a circular assignment.<br><br>- Native support for syntactic constraints and their meta-level handling rules.<br>  The generative semantics of Prolog can be disabled by turning a goal into a<br>  syntactic constraint (suspended goal). A syntactic constraint is resumed as<br>  soon as relevant variables gets assigned. Syntactic constraints can be<br>  manipulated by constraint handling rules (CHR).<br><br>- Native support for backtracking. To ease implementation of search.<br><br>- The constraint store is extensible.  The host application can declare<br>  non-syntactic constraints and use custom constraint solvers to check their<br>  consistency.<br><br>- Clauses are graftable. The user is free to extend an existing program by<br>  inserting/removing clauses, both at runtime (using implication) and at<br>  \compilation\ time by accumulating files.<br><br>ELPI is free software released under the terms of LGPL 2.1 or above.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/garrigue/lablgtk'>lablgtk3-sourceview3.3.1.1</a>
(3.1.1) OCaml interface to GTK+ gtksourceview library</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jacques Garrigue et al., Nagoya University</dd>
    <dt><b>license</b></dt><dd> LGPL with linking exception - see <a href="https://github.com/garrigue/lablgtk" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/garrigue/lablgtk'>homepage</a>)
      (<a href='https://github.com/garrigue/lablgtk/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/lablgtk3-sourceview3/lablgtk3-sourceview3.3.1.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>OCaml interface to GTK+3, gtksourceview3 library.<br><br>See https://garrigue.github.io/lablgtk/ for more information.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/garrigue/lablgtk'>lablgtk3.3.1.1</a>
(3.1.1) OCaml interface to GTK+3</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jacques Garrigue et al., Nagoya University</dd>
    <dt><b>license</b></dt><dd> LGPL-2.1-or-later WITH OCaml-LGPL-linking-exception - see <a href="https://github.com/garrigue/lablgtk" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/garrigue/lablgtk'>homepage</a>)
      (<a href='https://github.com/garrigue/lablgtk/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-repository/packages/lablgtk3/lablgtk3.3.1.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>OCaml interface to GTK+3<br><br>See https://garrigue.github.io/lablgtk/ for more information.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://gitlab.inria.fr/fpottier/menhir'>menhirLib.20200624</a>
(20200624) Runtime support library for parsers generated by Menhir</summary>
  <dl>
    <dt><b>authors</b></dt><dd>François Pottier <lt;francois.pottier@inria.fr>gt; - Yann Régis-Gianas <lt;yrg@pps.univ-paris-diderot.fr>gt;</dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="http://gitlab.inria.fr/fpottier/menhir" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://gitlab.inria.fr/fpottier/menhir'>homepage</a>)
      (<a href='mailto:menhir@inria.fr'>bug reports (email)</a>)
      (<a href='https://opam.ocaml.org/packages/menhirLib/menhirLib.20200624/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='http://gitlab.inria.fr/fpottier/menhir'>menhirSdk.20200624</a>
(20200624) Compile-time library for auxiliary tools related to Menhir</summary>
  <dl>
    <dt><b>authors</b></dt><dd>François Pottier <lt;francois.pottier@inria.fr>gt; - Yann Régis-Gianas <lt;yrg@pps.univ-paris-diderot.fr>gt;</dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="http://gitlab.inria.fr/fpottier/menhir" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://gitlab.inria.fr/fpottier/menhir'>homepage</a>)
      (<a href='mailto:menhir@inria.fr'>bug reports (email)</a>)
      (<a href='https://opam.ocaml.org/packages/menhirSdk/menhirSdk.20200624/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/num/'>num.1.5</a>
(1.5) The legacy Num library for arbitrary-precision integer and rational arithmetic</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Valérie Ménissier-Morain Pierre Weis Xavier Leroy</dd>
    <dt><b>license</b></dt><dd> LGPL-2.1-only WITH OCaml-LGPL-linking-exception - see <a href="https://github.com/ocaml/num/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/num/'>homepage</a>)
      (<a href='https://github.com/ocaml/num/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/num/num.1.5/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://ocaml.org'>ocaml-base-compiler.4.10.2</a>
(4.10.2) Official release 4.10.2</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Xavier Leroy and many contributors</dd>
    <dt><b>license</b></dt><dd> LGPL-2.1-or-later WITH OCaml-LGPL-linking-exception - see <a href="https://ocaml.org" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://ocaml.org'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ocaml-base-compiler/ocaml-base-compiler.4.10.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/janestreet/ocaml-compiler-libs'>ocaml-compiler-libs.v0.12.4</a>
(v0.12.4) OCaml compiler libraries repackaged</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/janestreet/ocaml-compiler-libs'>homepage</a>)
      (<a href='https://github.com/janestreet/ocaml-compiler-libs/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ocaml-compiler-libs/ocaml-compiler-libs.v0.12.4/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This packages exposes the OCaml compiler libraries repackages under<br>the toplevel names Ocaml_common, Ocaml_bytecomp, Ocaml_optcomp, ...</dd>
  </dl>
</details>

<details>
  <summary><a href='https://opam.ocaml.org/'>ocaml-config.1</a>
(1) OCaml Switch Configuration</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Louis Gesbert <lt;louis.gesbert@ocamlpro.com>gt; - David Allsopp <lt;david.allsopp@metastack.com>gt;</dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="https://opam.ocaml.org/" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://opam.ocaml.org/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ocaml-config/ocaml-config.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package is used by the OCaml package to set-up its variables.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml-ppx/ocaml-migrate-parsetree'>ocaml-migrate-parsetree.1.8.0</a>
(1.8.0) Convert OCaml parsetrees between different versions</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Frédéric Bour <lt;frederic.bour@lakaban.net>gt; - Jérémie Dimino <lt;jeremie@dimino.org>gt;</dd>
    <dt><b>license</b></dt><dd> LGPL-2.1-only WITH OCaml-LGPL-linking-exception - see <a href="https://github.com/ocaml-ppx/ocaml-migrate-parsetree" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml-ppx/ocaml-migrate-parsetree'>homepage</a>)
      (<a href='https://github.com/ocaml-ppx/ocaml-migrate-parsetree/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ocaml-migrate-parsetree/ocaml-migrate-parsetree.1.8.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Deprecated. Please, use Ppxlib instead.<br>More info on https://ocaml.org/changelog/2023-10-23-omp-deprecation<br><br>Convert OCaml parsetrees between different versions<br><br>This library converts parsetrees, outcometree and ast mappers between<br>different OCaml versions.  High-level functions help making PPX<br>rewriters independent of a compiler version.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://ocaml.org'>ocaml.4.10.2</a>
(4.10.2) The OCaml compiler (virtual package)</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Xavier Leroy - Damien Doligez - Alain Frisch - Jacques Garrigue - Didier Rémy - Jérôme Vouillon</dd>
    <dt><b>license</b></dt><dd> LGPL-2.1-or-later WITH OCaml-LGPL-linking-exception - see <a href="https://ocaml.org" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://ocaml.org'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ocaml/ocaml.4.10.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package requires a matching implementation of OCaml,<br>and polls it to initialise specific variables like `ocaml:native-dynlink`</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/ocamlbuild/'>ocamlbuild.0.14.3</a>
(0.14.3) OCamlbuild is a build system with builtin rules to easily build most OCaml projects</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Nicolas Pouillard Berke Durak</dd>
    <dt><b>license</b></dt><dd> LGPL-2.0-or-later WITH OCaml-LGPL-linking-exception - see <a href="https://github.com/ocaml/ocamlbuild/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/ocamlbuild/'>homepage</a>)
      (<a href='https://github.com/ocaml/ocamlbuild/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ocamlbuild/ocamlbuild.0.14.3/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='http://projects.camlcity.org/projects/findlib.html'>ocamlfind.1.9.6</a>
(1.9.6) A library manager for OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Gerd Stolpmann <lt;gerd@gerd-stolpmann.de>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://projects.camlcity.org/projects/findlib.html'>homepage</a>)
      (<a href='https://github.com/ocaml/ocamlfind/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ocamlfind/ocamlfind.1.9.6/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Findlib is a library manager for OCaml. It provides a convention how<br>to store libraries, and a file format (\META\) to describe the<br>properties of libraries. There is also a tool (ocamlfind) for<br>interpreting the META files, so that it is very easy to use libraries<br>in programs and scripts.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml-ppx/ppx_derivers'>ppx_derivers.1.2.1</a>
(1.2.1) Shared [@@deriving] plugin registry</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jérémie Dimino</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/BSD-3-Clause.html" target="_blank">BSD-3-Clause</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml-ppx/ppx_derivers'>homepage</a>)
      (<a href='https://github.com/ocaml-ppx/ppx_derivers/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ppx_derivers/ppx_derivers.1.2.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Ppx_derivers is a tiny package whose sole purpose is to allow<br>ppx_deriving and ppx_type_conv to inter-operate gracefully when linked<br>as part of the same ocaml-migrate-parsetree driver.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml-ppx/ppx_deriving'>ppx_deriving.5.1</a>
(5.1) Type-driven code generation for OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>whitequark <lt;whitequark@whitequark.org>gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml-ppx/ppx_deriving'>homepage</a>)
      (<a href='https://github.com/ocaml-ppx/ppx_deriving/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ppx_deriving/ppx_deriving.5.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>ppx_deriving provides common infrastructure for generating<br>code based on type definitions, and a set of useful plugins<br>for common tasks.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml-ppx/ppxlib'>ppxlib.0.14.0</a>
(0.14.0) Base library and tools for ppx rewriters</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml-ppx/ppxlib'>homepage</a>)
      (<a href='https://github.com/ocaml-ppx/ppxlib/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ppxlib/ppxlib.0.14.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>A comprehensive toolbox for ppx development. It features:<br>- a OCaml AST / parser / pretty-printer snapshot,to create a full<br>   frontend independent of the version of OCaml;<br>- a library for library for ppx rewriters in general, and type-driven<br>  code generators in particular;<br>- a feature-full driver for OCaml AST transformers;<br>- a quotation mechanism allowing  to write values representing the<br>   OCaml AST in the OCaml syntax;<br>- a generator of open recursion classes from type definitions.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/ocaml-re'>re.1.11.0</a>
(1.11.0) RE is a regular expression library for OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jerome Vouillon - Thomas Gazagnaire - Anil Madhavapeddy - Rudi Grinberg - Gabriel Radanne</dd>
    <dt><b>license</b></dt><dd> LGPL-2.1-or-later WITH OCaml-LGPL-linking-exception - see <a href="https://github.com/ocaml/ocaml-re" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/ocaml-re'>homepage</a>)
      (<a href='https://github.com/ocaml/ocaml-re/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/re/re.1.11.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Pure OCaml regular expressions with:<br>* Perl-style regular expressions (module Re.Perl)<br>* Posix extended regular expressions (module Re.Posix)<br>* Emacs-style regular expressions (module Re.Emacs)<br>* Shell-style file globbing (module Re.Glob)<br>* Compatibility layer for OCaml'apos;s built-in Str module (module Re.Str)</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/janestreet/result'>result.1.5</a>
(1.5) Compatibility Result module</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/BSD-3-Clause.html" target="_blank">BSD-3-Clause</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/janestreet/result'>homepage</a>)
      (<a href='https://github.com/janestreet/result/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/result/result.1.5/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Projects that want to use the new result type defined in OCaml >gt;= 4.03<br>while staying compatible with older version of OCaml should use the<br>Result module defined in this library.</dd>
  </dl>
</details>

<details>
  <summary><a href=' '>seq.base</a>
(base) Compatibility package for OCaml'apos;s standard iterator type starting from 4.07.</summary>
  <dl>
    <dt><b>authors</b></dt><dd> </dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href=" " target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href=' '>homepage</a>)
      (<a href='https://caml.inria.fr/mantis/main_page.php'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/seq/seq.base/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/janestreet/sexplib0'>sexplib0.v0.15.1</a>
(v0.15.1) Library containing the definition of S-expressions and some base converters</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/janestreet/sexplib0'>homepage</a>)
      (<a href='https://github.com/janestreet/sexplib0/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/sexplib0/sexplib0.v0.15.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Part of Jane Street'apos;s Core library<br>The Core suite of libraries is an industrial strength alternative to<br>OCaml'apos;s standard library that was developed by Jane Street, the<br>largest industrial user of OCaml.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/janestreet/stdio'>stdio.v0.15.0</a>
(v0.15.0) Standard IO library for OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/janestreet/stdio'>homepage</a>)
      (<a href='https://github.com/janestreet/stdio/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/stdio/stdio.v0.15.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Stdio implements simple input/output functionalities for OCaml.<br><br>It re-exports the input/output functions of the OCaml standard<br>libraries using a more consistent API.</dd>
  </dl>
</details>


