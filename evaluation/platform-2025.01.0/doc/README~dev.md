# Coq Platform 2025.01.0 providing Coq dev (latest master of all packages)

The [Coq proof assistant](https://coq.inria.fr) provides a formal language
to write mathematical definitions, executable algorithms, and theorems, together
with an environment for semi-interactive development of machine-checked proofs.

The [Coq Platform](https://github.com/coq/platform) is a distribution of the Coq
interactive prover together with a selection of Coq libraries and plugins.

The Coq Platform supports to install several versions of Coq (also in parallel).
This README file is for **Coq Platform 2025.01.0 with Coq dev**.
The README files for other versions are linked in the main [README](../README.md).

This is the latest development version of Coq and all packages.

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

**Note:** The package list is also available as [CSV](PackageTable~dev.csv).

**Note:** Click on the triangle to show additional information for a package!

<br>

## **Coq Platform 2025.01.0 with Coq dev "base level"**

The **base level** is mostly intended as a basis for custom installations using
opam and contains the following package(s):

<details>
  <summary><a href='https://coq.inria.fr/'>coq.dev</a>
(dev) Formal proof management system</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The Coq development team, INRIA, CNRS, and contributors.</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://coq.inria.fr/'>homepage</a>)
      (<a href='https://github.com/coq/coq/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq/coq.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>The Coq proof assistant provides a formal language to writenmathematical definitions, executable algorithms, and theorems, togethernwith an environment for semi-interactive development of machine-checkednproofs. Typical applications include the certification of properties of programmingnlanguages (e.g., the CompCert compiler certification project and thenBedrock verified low-level programming library), the formalization ofnmathematics (e.g., the full formalization of the Feit-Thompson theoremnand homotopy type theory) and teaching.</dd>
  </dl>
</details>

<br>

## **Coq Platform 2025.01.0 with Coq dev "IDE level"**

The **IDE level** adds an interactive development environment to the **base level**.

For beginners, e.g. following introductory tutorials, this level is usually sufficient.
If you install the **IDE level**, you can later add additional packages individually
via `opam install <package-name>` or rerun the Coq Platform installation script
and choose the full or extended level.

The **IDE level** contains the following package(s):

<details>
  <summary><a href='https://coq.inria.fr/'>coqide.dev</a>
(dev) IDE of the Coq formal proof management system</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The Coq development team, INRIA, CNRS, and contributors.</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://coq.inria.fr/'>homepage</a>)
      (<a href='https://github.com/coq/coq/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coqide/coqide.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>CoqIDE is a graphical user interface for interactive developmentnof mathematical definitions, executable algorithms, and proofs of theoremsnusing the Coq proof assistant.</dd>
  </dl>
</details>

<br>

## **Coq Platform 2025.01.0 with Coq dev "full level"**

The **full level** adds many commonly used coq libraries, plug-ins and
developments.

The packages in the **full level** are mature, well maintained
and suitable as basis for your own developments.
See the Coq Platform [charter](charter.md) for details.

The **full level** contains the following packages:

<details>
  <summary><a href='https://github.com/coq-community/aac-tactics'>coq-aac-tactics.dev</a>
(dev) This Coq plugin provides tactics for rewriting universally quantified equations, modulo associative (and possibly commutative) operators</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Thomas Braibant Damien Pous Fabian Kunze</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0-or-later.html" target="_blank">LGPL-3.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/coq-community/aac-tactics'>homepage</a>)
      (<a href='https://github.com/coq-community/aac-tactics/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-aac-tactics/coq-aac-tactics.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This Coq plugin provides tactics for rewriting universally quantifiednequations, modulo associativity and commutativity of some operator.nThe tactics can be applied for custom operators by registering thenoperators and their properties as type class instances. Many commonnoperator instances, such as for Z binary arithmetic and booleans, arenprovided with the plugin.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/coq/bignums'>coq-bignums.dev</a>
(dev) Bignums, the Coq library of arbitrary large numbers</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Laurent Théry - Benjamin Grégoire - Arnaud Spiwack - Evgeny Makarov - Pierre Letouzey</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/coq/bignums'>homepage</a>)
      (<a href='https://github.com/coq/bignums/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-bignums/coq-bignums.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Provides BigN, BigZ, BigQ that used to be part of Coq standard library</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/coq-community/coqeal'>coq-coqeal.dev</a>
(dev) CoqEAL - The Coq Effective Algebra Library</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Guillaume Cano - Cyril Cohen - Maxime Dénès - Érik Martin-Dorel - Anders Mörtberg - Damien Rouhling - Pierre Roux - Vincent Siles</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/coq-community/coqeal'>homepage</a>)
      (<a href='https://github.com/coq-community/coqeal/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-coqeal/coq-coqeal.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This Coq library contains a subset of the work that was developed in the contextnof the ForMath EU FP7 project (2009-2013). It has two parts:n- theory, which contains developments in algebra including normal forms of matrices,n  and optimized algorithms on MathComp data structures.n- refinements, which is a framework to ease change of data representations during a proof.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/thery/coqprime'>coq-coqprime-generator.dev</a>
(dev) Certificate generator for prime numbers in Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Laurent Théry</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/thery/coqprime'>homepage</a>)
      (<a href='https://github.com/thery/coqprime/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-coqprime-generator/coq-coqprime-generator.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/thery/coqprime'>coq-coqprime.dev</a>
(dev) Certifying prime numbers in Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Laurent Théry</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/thery/coqprime'>homepage</a>)
      (<a href='https://github.com/thery/coqprime/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-coqprime/coq-coqprime.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='http://coquelicot.saclay.inria.fr/'>coq-coquelicot.dev</a>
(dev) A Coq formalization of real analysis compatible with the standard library.</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Sylvie Boldo &lt;sylvie.boldo@inria.fr&gt; - Catherine Lelay &lt;catherine.lelay@inria.fr&gt; - Guillaume Melquiond &lt;guillaume.melquiond@inria.fr&gt;</dd>
    <dt><b>license</b></dt><dd> LGPL 3 - see <a href="http://coquelicot.saclay.inria.fr/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://coquelicot.saclay.inria.fr/'>homepage</a>)
      (<a href='coquelicot-friends@lists.gforge.inria.fr'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-coquelicot/coq-coquelicot.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='http://corn.cs.ru.nl/'>coq-corn.dev</a>
(dev) Constructive Coq Repository at Nijmegen.</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Iris Loeb  - Rik van Ginneken  - Randy Pollack  - Mariusz Giero  - Dan Synek  - Lionel Mamane  - Luís Cruz-Filipe  - Milad Niqui  - Pierre Letouzey  - Herman Geuvers  - Freek Wiedijk  - Henk Barendregt  - Dimitri Hendriks  - Bart Kirkels  - Russell O&apos;Connor  - Bas Spitters  - Sébastien Hinderer  - Nickolay V. Shmyrev  - Jan Zwanenburg </dd>
    <dt><b>license</b></dt><dd> GPL 2 - see <a href="http://corn.cs.ru.nl/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://corn.cs.ru.nl/'>homepage</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-corn/coq-corn.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>The Constructive Coq Repository at Nijmegen, C-CoRN, aims at buildingna computer based library of constructive mathematics, formalized innthe theorem prover Coq. It includes the following parts:nn* Algebraic Hierarchynno An axiomatic formalization of the most common algebraicnstructures, including setoids, monoids, groups, rings,nfields, ordered fields, rings of polynomials, real andncomplex numbersnn* Model of the Real Numbersnno Construction of a concrete real number structurensatisfying the previously defined axiomsnn* Fundamental Theorem of Algebranno A proof that every non-constant polynomial on the complexnplane has at least one rootnn* Real Calculusnno A collection of elementary results on real analysis,nincluding continuity, differentiability, integration,nTaylor&apos;s theorem and the Fundamental Theorem of Calculus</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/coq-community/coq-dpdgraph'>coq-dpdgraph.dev</a>
(dev) Compute dependencies between Coq objects (definitions, theorems) and produce graphs</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Anne Pacalet Yves Bertot Olivier Pons</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/coq-community/coq-dpdgraph'>homepage</a>)
      (<a href='https://github.com/coq-community/coq-dpdgraph/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-dpdgraph/coq-dpdgraph.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Coq plugin that extracts the dependencies between Coq objects,nand produces files with dependency information. Includes toolsnto visualize dependency graphs and find unused definitions.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://github.com/LPCIC/coq-elpi'>coq-elpi.dev</a>
(dev) Elpi extension language for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Enrico Tassi</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-or-later.html" target="_blank">LGPL-2.1-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://github.com/LPCIC/coq-elpi'>homepage</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-elpi/coq-elpi.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Coq-elpi provides a Coq plugin that embeds ELPI.nIt also provides a way to embed Coq&apos;s terms into λProlog usingnthe Higher-Order Abstract Syntax approachnand a way to read terms back.  In addition to that it exports to ELPI anset of Coq&apos;s primitives, e.g. printing a message, accessing thenenvironment of theorems and data types, defining a new constant and so on.nFor convenience it also provides a quotation and anti-quotation for Coq&apos;snsyntax in λProlog.  E.g. `{{nat}}` is expanded to the type name of naturalnnumbers, or `{{A -&gt; B}}` to the representation of a product by unfoldingn the `-&gt;` notation. Finally it provides a way to define new vernacular commandsnandnnew tactics.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://mattam82.github.io/Coq-Equations'>coq-equations.dev</a>
(dev) A function definition package for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Matthieu Sozeau &lt;matthieu.sozeau@inria.fr&gt; - Cyprien Mangin &lt;cyprien.mangin@m4x.org&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-or-later.html" target="_blank">LGPL-2.1-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://mattam82.github.io/Coq-Equations'>homepage</a>)
      (<a href='https://github.com/mattam82/Coq-Equations/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-equations/coq-equations.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Equations is a function definition plugin for Coq, that allows thendefinition of functions by dependent pattern-matching and well-founded,nmutual or nested structural recursion and compiles them into corenterms. It automatically derives the clauses equations, the graph of thenfunction and its associated elimination principle.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/coq-community/coq-ext-lib'>coq-ext-lib.dev</a>
(dev) a library of Coq definitions, theorems, and tactics</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Gregory Malecha</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/BSD-2-Clause-FreeBSD.html" target="_blank">BSD-2-Clause-FreeBSD</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/coq-community/coq-ext-lib'>homepage</a>)
      (<a href='https://github.com/coq-community/coq-ext-lib/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-ext-lib/coq-ext-lib.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='http://flocq.gforge.inria.fr/'>coq-flocq.3.dev</a>
(3.dev) A floating-point formalization for the Coq system.</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Sylvie Boldo &lt;sylvie.boldo@inria.fr&gt; - Guillaume Melquiond &lt;guillaume.melquiond@inria.fr&gt;</dd>
    <dt><b>license</b></dt><dd> LGPL 3 - see <a href="http://flocq.gforge.inria.fr/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://flocq.gforge.inria.fr/'>homepage</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-flocq/coq-flocq.3.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='http://gappa.gforge.inria.fr/'>coq-gappa.dev</a>
(dev) A Coq tactic for discharging goals about floating-point arithmetic and round-off errors using the Gappa prover</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Guillaume Melquiond &lt;guillaume.melquiond@inria.fr&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0-or-later.html" target="_blank">LGPL-3.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://gappa.gforge.inria.fr/'>homepage</a>)
      (<a href='https://gitlab.inria.fr/gappa/coq/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-gappa/coq-gappa.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/lukaszcz/coqhammer'>coq-hammer-tactics.dev</a>
(dev) Reconstruction tactics for the hammer for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Lukasz Czajka &lt;lukaszcz@mimuw.edu.pl&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/lukaszcz/coqhammer'>homepage</a>)
      (<a href='https://github.com/lukaszcz/coqhammer/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-hammer-tactics/coq-hammer-tactics.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Collection of tactics that are used by the hammer for Coqnto reconstruct proofs found by automated theorem provers. When the hammernhas been successfully applied to a project, only this package needsnto be installed; the hammer plugin is not required.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/lukaszcz/coqhammer'>coq-hammer.dev</a>
(dev) General-purpose automated reasoning hammer tool for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Lukasz Czajka &lt;lukaszcz@mimuw.edu.pl&gt; - Cezary Kaliszyk &lt;cezary.kaliszyk@uibk.ac.at&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/lukaszcz/coqhammer'>homepage</a>)
      (<a href='https://github.com/lukaszcz/coqhammer/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-hammer/coq-hammer.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>A general-purpose automated reasoning hammer tool for Coq that combinesnlearning from previous proofs with the translation of problems to thenlogics of automated systems and the reconstruction of successfully found proofs.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/math-comp/hierarchy-builder'>coq-hierarchy-builder.dev</a>
(dev) High level commands to declare and evolve a hierarchy based on packed classes</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Cyril Cohen Kazuhiko Sakaguchi Enrico Tassi</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/math-comp/hierarchy-builder'>homepage</a>)
      (<a href='https://github.com/math-comp/hierarchy-builder/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-hierarchy-builder/coq-hierarchy-builder.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Hierarchy Builder is a high level language to build hierarchies of algebraic structures and make thesenhierarchies evolve without breaking user code. The key concepts are the ones of factory, buildernand abbreviation that let the hierarchy developer describe an actual interface for their library.nBehind that interface the developer can provide appropriate code to ensure retro compatibility.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://homotopytypetheory.org/'>coq-hott.dev</a>
(dev) The Homotopy Type Theory library</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The Coq-HoTT Development Team</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/BSD-2-Clause.html" target="_blank">BSD-2-Clause</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://homotopytypetheory.org/'>homepage</a>)
      (<a href='https://github.com/HoTT/HoTT/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-hott/coq-hott.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>To use the HoTT library, the following flags must be passed to coqc:n   -noinit -indices-matternnTo use the HoTT library in a project, add the following to _CoqProject:n   -arg -noinitn   -arg -indices-mattern`</dd>
  </dl>
</details>

<details>
  <summary><a href='http://coq-interval.gforge.inria.fr/'>coq-interval.dev</a>
(dev) A Coq tactic for proving bounds on real-valued expressions automatically</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Guillaume Melquiond &lt;guillaume.melquiond@inria.fr&gt; - Érik Martin-Dorel &lt;erik.martin-dorel@irit.fr&gt; - Pierre Roux &lt;pierre.roux@onera.fr&gt; - Thomas Sibut-Pinote &lt;thomas.sibut-pinote@inria.fr&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-C.html" target="_blank">CECILL-C</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://coq-interval.gforge.inria.fr/'>homepage</a>)
      (<a href='https://gitlab.inria.fr/coqinterval/interval/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-interval/coq-interval.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://iris-project.org/'>coq-iris-heap-lang.dev</a>
(dev) The canonical example language for Iris</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The Iris Team</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/BSD-3-Clause.html" target="_blank">BSD-3-Clause</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://iris-project.org/'>homepage</a>)
      (<a href='https://gitlab.mpi-sws.org/iris/iris/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-iris-heap-lang/coq-iris-heap-lang.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package defines HeapLang, a concurrent lambda calculus with references, andnuses Iris to build a program logic for HeapLang programs.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://iris-project.org/'>coq-iris.dev</a>
(dev) A Higher-Order Concurrent Separation Logic Framework with support for interactive proofs</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The Iris Team</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/BSD-3-Clause.html" target="_blank">BSD-3-Clause</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://iris-project.org/'>homepage</a>)
      (<a href='https://gitlab.mpi-sws.org/iris/iris/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-iris/coq-iris.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Iris is a framework for reasoning about the safety of concurrent programs usingnconcurrent separation logic. It can be used to develop a program logic, forndefining logical relations, and for reasoning about type systems, among othernapplications. This package includes the base logic, Iris Proof Mode (IPM) /nMoSeL, and a general language-independent program logic; see coq-iris-heap-langnfor an instantiation of the program logic to a particular programming language.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/Matafou/LibHyps'>coq-libhyps.dev</a>
(dev) Hypotheses manipulation library</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Pierre Courtieu</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/Matafou/LibHyps'>homepage</a>)
      (<a href='https://github.com/Matafou/LibHyps/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-libhyps/coq-libhyps.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library defines a set of tactics to manipulate hypothesisnindividually or by group. In particular it allows applying a tactic onneach hypothesis of a goal, or only on *new* hypothesis after somentactic. Examples of manipulations: automatic renaming, subst, revert,nor any tactic expecting a hypothesis name as argument.nnIt also provides the especialize tactic to ease forward reasoning byninstantianting one, several or all premisses of a hypothesis.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://math-classes.org/'>coq-math-classes.dev</a>
(dev) A library of abstract interfaces for mathematical structures in Coq.</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Eelis van der Weegen Bas Spitters Robbert Krebbers</dd>
    <dt><b>license</b></dt><dd> Public Domain - see <a href="http://math-classes.org/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://math-classes.org/'>homepage</a>)
      (<a href='https://github.com/math-classes/math-classes/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-math-classes/coq-math-classes.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>We have been working on a new set of foundational interfaces for formalized constructive mathematics in Coq, heavily based on Coq&apos;s new type classes, used in a systematic way in order to achieve:n* elegant and mathematically sound abstract interfaces for algebraic and numeric structures up to and including rationals (with practical use of universal algebra and category theory);n* a very flexible purely predicate-based representation of algebraic structures that makes sharing, multiple inheritance, and derived inheritance, all trivial;n* clean expression terms that neither refer to proofs nor require deeply nested record projections;n* fluent rewriting;n* easy and flexible replacement and specialization of data representations and operations with more efficient versions;n* ordinary mathematical notation and overloaded names not reliant on Coq&apos;s notation scopes.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/math-comp/'>coq-mathcomp-algebra.dev</a>
(dev) Mathematical Components Library on Algebra</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O&apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/math-comp/'>homepage</a>)
      (<a href='Mathematical Components <mathcomp-dev@sympa.inria.fr>'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-algebra/coq-mathcomp-algebra.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains definitions and theorems about discreten(i.e. with decidable equality) algebraic structures : ring, fields,nordered fields, real fields,  modules, algebras, integers, rationalnnumbers, polynomials, matrices, vector spaces...</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/math-comp/analysis'>coq-mathcomp-analysis.dev</a>
(dev) An analysis library for mathematical components</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Reynald Affeldt - Yves Bertot - Cyril Cohen - Marie Kerjean - Assia Mahboubi - Damien Rouhling - Pierre Roux - Kazuhiko Sakaguchi - Zachary Stone - Pierre-Yves Strub - Laurent Théry</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-C.html" target="_blank">CECILL-C</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/math-comp/analysis'>homepage</a>)
      (<a href='https://github.com/math-comp/analysis/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-analysis/coq-mathcomp-analysis.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This repository contains an experimental library for real analysis fornthe Coq proof-assistant and using the Mathematical Components library.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/math-comp/bigenough'>coq-mathcomp-bigenough.dev</a>
(dev) A small library to do epsilon - N reasonning</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Cyril Cohen &lt;cyril.cohen@inria.fr&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/math-comp/bigenough'>homepage</a>)
      (<a href='https://github.com/math-comp/bigenough/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-bigenough/coq-mathcomp-bigenough.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>The package contains a package to reasoning with big enough objectsn(mostly natural numbers). This package is essentially for backwardncompatibility purposes as `bigenough` will be subsumed by the nearntactics. The formalization is based on the Mathematical Componentsnlibrary.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/math-comp/'>coq-mathcomp-character.dev</a>
(dev) Mathematical Components Library on character theory</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O&apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/math-comp/'>homepage</a>)
      (<a href='Mathematical Components <mathcomp-dev@sympa.inria.fr>'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-character/coq-mathcomp-character.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains definitions and theorems about groupnrepresentations, characters and class functions.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/math-comp/'>coq-mathcomp-field.dev</a>
(dev) Mathematical Components Library on Fields</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O&apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/math-comp/'>homepage</a>)
      (<a href='Mathematical Components <mathcomp-dev@sympa.inria.fr>'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-field/coq-mathcomp-field.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains definitions and theorems about field extensions,ngalois theory, algebraic numbers, cyclotomic polynomials...</dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/math-comp/'>coq-mathcomp-fingroup.dev</a>
(dev) Mathematical Components Library on finite groups</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O&apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/math-comp/'>homepage</a>)
      (<a href='Mathematical Components <mathcomp-dev@sympa.inria.fr>'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-fingroup/coq-mathcomp-fingroup.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains definitions and theorems about finite groups,ngroup quotients, group morphisms, group presentation, group action...</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/math-comp/finmap'>coq-mathcomp-finmap.dev</a>
(dev) Finite sets, finite maps, finitely supported functions</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Cyril Cohen Kazuhiko Sakaguchi</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/math-comp/finmap'>homepage</a>)
      (<a href='https://github.com/math-comp/finmap/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-finmap/coq-mathcomp-finmap.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library is an extension of mathematical component in order tonsupport finite sets and finite maps on choicetypes (rather that finitentypes). This includes support for functions with finite support andnmultisets. The library also contains a generic order and set libary,nwhich will be used to subsume notations for finite sets, eventually.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/math-comp/multinomials'>coq-mathcomp-multinomials.dev</a>
(dev) A Multivariate polynomial Library for the Mathematical Components Library</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Pierre-Yves Strub</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/math-comp/multinomials'>homepage</a>)
      (<a href='https://github.com/math-comp/multinomials/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-multinomials/coq-mathcomp-multinomials.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/math-comp/real-closed'>coq-mathcomp-real-closed.dev</a>
(dev) Mathematical Components Library on real closed fields</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Cyril Cohen Assia Mahboubi</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/math-comp/real-closed'>homepage</a>)
      (<a href='https://github.com/math-comp/real-closed/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-real-closed/coq-mathcomp-real-closed.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains definitions and theorems about real closednfields, with a construction of the real closure and the algebraicnclosure (including a proof of the fundamental theorem ofnalgebra). It also contains a proof of decidability of the firstnorder theory of real closed field, through quantifier elimination.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/math-comp/'>coq-mathcomp-solvable.dev</a>
(dev) Mathematical Components Library on finite groups (II)</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O&apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/math-comp/'>homepage</a>)
      (<a href='Mathematical Components <mathcomp-dev@sympa.inria.fr>'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-solvable/coq-mathcomp-solvable.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library contains more definitions and theorems about finite groups.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://math-comp.github.io/'>coq-mathcomp-ssreflect.dev</a>
(dev) Small Scale Reflection</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jeremy Avigad  - Andrea Asperti  - Stephane Le Roux  - Yves Bertot  - Laurence Rideau  - Enrico Tassi  - Ioana Pasca  - Georges Gonthier  - Sidi Ould Biha  - Cyril Cohen  - Francois Garillot  - Alexey Solovyev  - Russell O&apos;Connor  - Laurent Théry  - Assia Mahboubi </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://math-comp.github.io/'>homepage</a>)
      (<a href='https://github.com/math-comp/math-comp/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-ssreflect/coq-mathcomp-ssreflect.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library includes the small scale reflection proof languagenextension and the minimal set of libraries to take advantage of it.nThis includes libraries on lists (seq), boolean and booleannpredicates, natural numbers and types with decidable equality,nfinite types, finite sets, finite functions, finite graphs, basic arithmeticsnand prime numbers, big operators</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/math-comp/mczify'>coq-mathcomp-zify.dev</a>
(dev) Micromega tactics for Mathematical Components</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Kazuhiko Sakaguchi</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/math-comp/mczify'>homepage</a>)
      (<a href='https://github.com/math-comp/mczify/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mathcomp-zify/coq-mathcomp-zify.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This small library enables the use of the Micromega tactics for goals statednwith the definitions of the Mathematical Components library by extending thenzify tactic.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://gitlab.inria.fr/fpottier/coq-menhirlib'>coq-menhirlib.dev</a>
(dev) A support library for verified Coq parsers produced by Menhir</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jacques-Henri Jourdan &lt;jacques-henri.jourdan@lri.fr&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0-or-later.html" target="_blank">LGPL-3.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://gitlab.inria.fr/fpottier/coq-menhirlib'>homepage</a>)
      (<a href='jacques-henri.jourdan@lri.fr'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-menhirlib/coq-menhirlib.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/Mtac2/Mtac2'>coq-mtac2.dev</a>
(dev) Mtac2: Typed Tactics for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Beta Ziliani &lt;beta.ziliani@gmail.com&gt; - Jan-Oliver Kaiser &lt;janno@mpi-sws.org&gt; - Robbert Krebbers &lt;mail@robbertkrebbers.nl&gt; - Yann Régis-Gianas &lt;yrg@pps.univ-paris-diderot.fr&gt; - Derek Dreyer &lt;dreyer@mpi-sws.org&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/Mtac2/Mtac2'>homepage</a>)
      (<a href='https://github.com/Mtac2/Mtac2/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-mtac2/coq-mtac2.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/coq-community/paramcoq'>coq-paramcoq.dev</a>
(dev) Paramcoq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Chantal Keller (Inria, École polytechnique) - Marc Lasson (ÉNS de Lyon) - Abhishek Anand - Pierre Roux - Emilio Jesús Gallego Arias - Cyril Cohen - Matthieu Sozeau</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/coq-community/paramcoq'>homepage</a>)
      (<a href='https://github.com/coq-community/paramcoq/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-paramcoq/coq-paramcoq.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>The plugin is still in an experimental state. It is not very usernfriendly (lack of good error messages) and still contains bugs. But isnuseable enough to translate a large chunk of standard library.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/QuickChick/QuickChick'>coq-quickchick.dev</a>
(dev) QuickChick is a random property-based testing library for Coq.</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Leonidas Lampropoulos  - Zoe Paraskevopoulou  - Maxime Denes  - Catalin Hritcu  - Benjamin Pierce  - Arthur Azevedo de Amorim  - Antal Spector-Zabusky  - Li-Yao Xia  - Yishuai Li </dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/QuickChick/QuickChick'>homepage</a>)
      (<a href='https://github.com/QuickChick/QuickChick/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-quickchick/coq-quickchick.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/coq-community/reglang'>coq-reglang.dev</a>
(dev) Representations of regular languages (i.e., regexps, various types of automata, and WS1S) with equivalence proofs, in Coq and MathComp</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Christian Doczkal Jan-Oliver Kaiser Gert Smolka</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/CECILL-B.html" target="_blank">CECILL-B</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/coq-community/reglang'>homepage</a>)
      (<a href='https://github.com/coq-community/reglang/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-reglang/coq-reglang.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library provides definitions and verified translations betweenndifferent representations of regular languages: various forms ofnautomata (deterministic, nondeterministic, one-way, two-way),nregular expressions, and the logic WS1S. It also contains variousndecidability results and closure properties of regular languages.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/Lysxia/coq-simple-io'>coq-simple-io.dev</a>
(dev) IO monad for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Li-yao Xia</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/Lysxia/coq-simple-io'>homepage</a>)
      (<a href='https://github.com/Lysxia/coq-simple-io/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-simple-io/coq-simple-io.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://gitlab.mpi-sws.org/iris/stdpp'>coq-stdpp.dev</a>
(dev) An extended Standard Library for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The std++ team</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/BSD-3-Clause.html" target="_blank">BSD-3-Clause</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://gitlab.mpi-sws.org/iris/stdpp'>homepage</a>)
      (<a href='https://gitlab.mpi-sws.org/iris/stdpp/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-stdpp/coq-stdpp.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>The key features of this library are as follows:nn- It provides a great number of definitions and lemmas for common datan  structures such as lists, finite maps, finite sets, and finite multisets.n- It uses type classes for common notations (like `∅`, `∪`, and Haskell-stylen  monad notations) so that these can be overloaded for different data structures.n- It uses type classes to keep track of common properties of types, like itn  having decidable equality or being countable or finite.n- Most data structures are represented in canonical ways so that Leibnizn  equality can be used as much as possible (for example, for maps we haven  `m1 = m2` iff `∀ i, m1 !! i = m2 !! i`). On top of that, the library providesn  setoid instances for most types and operations.n- It provides various tactics for common tasks, like an ssreflect inspiredn  `done` tactic for finishing trivial goals, a simple breadth-first solvern  `naive_solver`, an equality simplifier `simplify_eq`, a solver `solve_proper`n  for proving compatibility of functions with respect to relations, and a solvern  `set_solver` for goals involving set operations.n- It is entirely dependency- and axiom-free.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/unicoq/unicoq'>coq-unicoq.dev</a>
(dev) An enhanced unification algorithm for Coq</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Matthieu Sozeau &lt;matthieu.sozeau@inria.fr&gt; - Beta Ziliani &lt;beta@mpi-sws.org&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/unicoq/unicoq'>homepage</a>)
      (<a href='https://github.com/unicoq/unicoq/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-unicoq/coq-unicoq.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/UniMath/UniMath'>coq-unimath.dev</a>
(dev) Library of Univalent Mathematics</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The UniMath Development Team</dd>
    <dt><b>license</b></dt><dd> Kind of MIT - see <a href="https://github.com/UniMath/UniMath" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/UniMath/UniMath'>homepage</a>)
      (<a href='https://github.com/UniMath/UniMath/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-unimath/coq-unimath.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://wwwlehre.dhbw-stuttgart.de/~sschulz/E/E.html'>eprover.2.6</a>
(2.6) E Theorem Prover</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Stephan Schulz - Simon Cruanes - Petar Vukmirovic - Mohamed Bassem - Martin Moehrmann</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-or-later.html" target="_blank">LGPL-2.1-or-later</a> <a href="https://spdx.org/licenses/GPL-2.0-or-later.html" target="_blank">GPL-2.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://wwwlehre.dhbw-stuttgart.de/~sschulz/E/E.html'>homepage</a>)
      (<a href='Stephan Schulz (see homepage for email)'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/eprover/eprover.2.6/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>E is a theorem prover for full first-order logic with equality. It accepts a problem specification, typically consisting of a number of first-order clauses or formulas, and a conjecture, again either in clausal or full first-order form. The system will then try to find a formal proof for the conjecture, assuming the axioms.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://gitlab.inria.fr/fpottier/menhir'>menhir.dev</a>
(dev) An LR(1) parser generator</summary>
  <dl>
    <dt><b>authors</b></dt><dd>François Pottier &lt;francois.pottier@inria.fr&gt; - Yann Régis-Gianas &lt;yrg@pps.univ-paris-diderot.fr&gt;</dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="http://gitlab.inria.fr/fpottier/menhir" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://gitlab.inria.fr/fpottier/menhir'>homepage</a>)
      (<a href='menhir@inria.fr'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/menhir/menhir.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml-ppx/ppxlib'>ppxlib.0.15.0</a>
(0.15.0) Standard library for ppx rewriters</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml-ppx/ppxlib'>homepage</a>)
      (<a href='https://github.com/ocaml-ppx/ppxlib/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ppxlib/ppxlib.0.15.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Ppxlib is the standard library for ppx rewriters and other programsnthat manipulate the in-memory reprensation of OCaml programs, a.k.anthe Parsetree.nnIt also comes bundled with two ppx rewriters that are commonly used tonwrite tools that manipulate and/or generate Parsetree values;n`ppxlib.metaquot` which allows to construct Parsetree values using thenOCaml syntax directly and `ppxlib.traverse` which provides variousnways of automatically traversing values of a given type, in particularnallowing to inject a complex structured value into generated code.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/Z3prover/z3'>z3_tptp.4.8.13</a>
(4.8.13) TPTP front end for Z3 solver</summary>
  <dl>
    <dt><b>authors</b></dt><dd>MSR</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/Z3prover/z3'>homepage</a>)
      (<a href='https://github.com/Z3prover/z3/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-repository/packages/z3_tptp/z3_tptp.4.8.13/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<br>

## **Coq Platform 2025.01.0 with Coq dev "optional packages"**

The **optional** packages have the same maturity and maintenance level as the
packages in the full level, but either have a **non open source license** or
depend on packages with non open source license.

The interactive installation script and the Windows installer explicitly ask
if you want to install these packages.

The macOS and snap installation bundles always include these packages.

The following packages are **optional**:

<details>
  <summary><a href='http://compcert.inria.fr/'>coq-compcert.dev</a>
(dev) The CompCert C compiler (64 bit)</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Xavier Leroy &lt;xavier.leroy@inria.fr&gt;</dd>
    <dt><b>license</b></dt><dd> INRIA Non-Commercial License Agreement - see <a href="http://compcert.inria.fr/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://compcert.inria.fr/'>homepage</a>)
      (<a href='https://github.com/AbsInt/CompCert/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-compcert/coq-compcert.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='http://vst.cs.princeton.edu/'>coq-vst.dev</a>
(dev) Verified Software Toolchain</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Andrew W. Appel - Lennart Beringer - Sandrine Blazy - Qinxiang Cao - Santiago Cuellar - Robert Dockins - Josiah Dodds - Nick Giannarakis - Samuel Gruetter - Aquinas Hobor - Jean-Marie Madiot - William Mansky</dd>
    <dt><b>license</b></dt><dd> <a href="https://raw.githubusercontent.com/PrincetonUniversity/VST/master/LICENSE" target="_blank">link</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://vst.cs.princeton.edu/'>homepage</a>)
      (<a href='https://github.com/PrincetonUniversity/VST/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/coq-vst/coq-vst.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>The software toolchain includes static analyzers to check assertions about your program; optimizing compilers to translate your program to machine language; operating systems and libraries to supply context for your program. The Verified Software Toolchain project assures with machine-checked proofs that the assertions claimed at the top of the toolchain really hold in the machine-language program, running in the operating-system context.</dd>
  </dl>
</details>

<br>

## **Coq Platform 2025.01.0 with Coq dev "extended level"**

The **extended level** contains packages which are in a beta stage or otherwise
don't yet have the level of maturity or support required for inclusion in the
full level, but there are plans to move them to the full level in a future
release of Coq Platform. The main point of the extended level is advertisement:
users are important to bring a development from a beta to a release state.

The interactive installation script explicitly asks if you want to install these packages.
The macOS and snap installation bundles always include these packages.
The Windows installer also includes them, and they are selected by default.

The **extended level** contains the following packages:

<details>
  <summary><a href='https://github.com/arthuraa/deriving'>coq-deriving.dev</a>
(dev) Generic instances of MathComp classes</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Arthur Azevedo de Amorim</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/arthuraa/deriving'>homepage</a>)
      (<a href='https://github.com/arthuraa/deriving/issues'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/coq-deriving/coq-deriving.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Deriving provides generic instances of MathComp classes forninductive data types.  It includes native support for eqType,nchoiceType, countType and finType instances, and it allows users tondefine their own instances for other classes.</dd>
  </dl>
</details>

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
  <summary><a href='https://github.com/Chris00/ocaml-cairo'>cairo2.0.6.2</a>
(0.6.2) Binding to Cairo, a 2D Vector Graphics Library</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Christophe Troestler &lt;Christophe.Troestler@umons.ac.be&gt; - Pierre Hauweele &lt;pierre@hauweele.net&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0-only.html" target="_blank">LGPL-3.0-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/Chris00/ocaml-cairo'>homepage</a>)
      (<a href='https://github.com/Chris00/ocaml-cairo/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/cairo2/cairo2.0.6.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This is a binding to Cairo, a 2D graphics library with support fornmultiple output devices. Currently supported output targets includenthe X Window System, Quartz, Win32, image buffers, PostScript, PDF,nand SVG file output.</dd>
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
    <dt><b>description</b></dt><dd>Camlp5 is a preprocessor and pretty-printer for OCaml programs. It also provides parsing and printing tools.nnAs a preprocessor, it allows to:nnextend the syntax of OCaml,nredefine the whole syntax of the language.nAs a pretty printer, it allows to:nndisplay OCaml programs in an elegant way,nconvert from one syntax to another,ncheck the results of syntax extensions.nCamlp5 also provides some parsing and pretty printing tools:nnextensible grammarsnextensible printersnstream parsers and lexersnpretty print modulenIt works as a shell command and can also be used in the OCaml toplevel.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/GNOME/adwaita-icon-theme'>adwaita-icon-theme.1</a>
(1) Virtual package relying on adwaita-icon-theme</summary>
  <dl>
    <dt><b>authors</b></dt><dd>GNOME devs</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-3.0-only.html" target="_blank">LGPL-3.0-only</a> <a href="https://spdx.org/licenses/CC-BY-SA-3.0.html" target="_blank">CC-BY-SA-3.0</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/GNOME/adwaita-icon-theme'>homepage</a>)
      (<a href='https://gitlab.gnome.org/GNOME/adwaita-icon-theme/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-adwaita-icon-theme/conf-adwaita-icon-theme.1/opam'>opam package</a>)
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
    <dt><b>description</b></dt><dd>This package can only install if the autoconf commandnis available on the system.</dd>
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
  <summary><a href='https://github.com/ocaml/opam-repository'>gcc.1.0</a>
(1.0) Virtual package relying on the gcc compiler (for C)</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Francois Berenger Francois Bobot</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-2.0-or-later.html" target="_blank">GPL-2.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/opam-repository'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-gcc/conf-gcc.1.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the gcc compiler is installed on the system.</dd>
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
      (<a href='https://opam.ocaml.org/packages/conf-gtk3/conf-gtk3.18/opam'>opam package</a>)
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
  <summary><a href='http://www.gnu.org/software/libtool'>libtool.1</a>
(1) Virtual package relying on libtool installation</summary>
  <dl>
    <dt><b>authors</b></dt><dd>https://www.gnu.org/software/libtool/libtool.html#maintainer</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-3.0-only.html" target="_blank">GPL-3.0-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://www.gnu.org/software/libtool'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-libtool/conf-libtool.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the libtool commandnis available on the system.</dd>
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
  <summary><a href='http://www.freedesktop.org/wiki/Software/pkg-config/'>pkg-config.2</a>
(2) Check if pkg-config is installed and create an opam switch local pkgconfig folder</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Francois Berenger</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-1.0-or-later.html" target="_blank">GPL-1.0-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://www.freedesktop.org/wiki/Software/pkg-config/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/conf-pkg-config/conf-pkg-config.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if the pkg-config package is installednon the system.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://www.python.org/downloads/release/python-3910/'>python-3.9.0.0</a>
(9.0.0) Virtual package relying on Python-3 installation</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Python Software Foundation</dd>
    <dt><b>license</b></dt><dd> PSF - see <a href="https://www.python.org/downloads/release/python-3910/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://www.python.org/downloads/release/python-3910/'>homepage</a>)
      (<a href='https://github.com/ocaml/opam-repository/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-repository/packages/conf-python-3/conf-python-3.9.0.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This package can only install if a Python-3 interpreter is availablenon the system.nIf a minor version needs to be specified for your operating system, thennpython-3.9 will be used.</dd>
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
  <summary><a href='https://github.com/ocaml-community/cppo'>cppo.1.6.8</a>
(1.6.8) Code preprocessor like cpp for OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Martin Jambon</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/BSD-3-Clause.html" target="_blank">BSD-3-Clause</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml-community/cppo'>homepage</a>)
      (<a href='https://github.com/ocaml-community/cppo/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/cppo/cppo.1.6.8/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Cppo is an equivalent of the C preprocessor for OCaml programs.nIt allows the definition of simple macros and file inclusion.nnCppo is:nn* more OCaml-friendly than cppn* easy to learn without consulting a manualn* reasonably fastn* simple to install and to maintain</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml-dune/csexp'>csexp.1.5.1</a>
(1.5.1) Parsing and printing of S-expressions in Canonical form</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Quentin Hocquet &lt;mefyl@gruntech.org&gt; - Jane Street Group, LLC - Jeremie Dimino &lt;jeremie@dimino.org&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml-dune/csexp'>homepage</a>)
      (<a href='https://github.com/ocaml-dune/csexp/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/csexp/csexp.1.5.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>This library provides minimal support for Canonical S-expressionsn[1]. Canonical S-expressions are a binary encoding of S-expressionsnthat is super simple and well suited for communication betweennprograms.nnThis library only provides a few helpers for simple applications. Ifnyou need more advanced support, such as parsing from more fancy inputnsources, you should consider copying the code of this library givennhow simple parsing S-expressions in canonical form is.nnTo avoid a dependency on a particular S-expression library, the onlynmodule of this library is parameterised by the type of S-expressions.nn[1] https://en.wikipedia.org/wiki/Canonical_S-expressions</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/dune'>dune-configurator.2.9.1</a>
(2.9.1) Helper library for gathering system configuration</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC &lt;opensource@janestreet.com&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/dune'>homepage</a>)
      (<a href='https://github.com/ocaml/dune/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/dune-configurator/dune-configurator.2.9.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>dune-configurator is a small library that helps writing OCaml scripts thatntest features available on the system, in order to generate config.hnfiles for instance.nAmong other things, dune-configurator allows one to:n- test if a C program compilesn- query pkg-confign- import #define from OCaml header filesn- generate config.h file</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/dune'>dune.2.9.1</a>
(2.9.1) Fast, portable, and opinionated build system</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC &lt;opensource@janestreet.com&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/dune'>homepage</a>)
      (<a href='https://github.com/ocaml/dune/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/dune/dune.2.9.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>dune is a build system that was designed to simplify the release ofnJane Street packages. It reads metadata from dune files following anvery simple s-expression syntax.nndune is fast, has very low-overhead, and supports parallel builds onnall platforms. It has no system dependencies; all you need to buildndune or packages using dune is OCaml. You don&apos;t need make or bashnas long as the packages themselves don&apos;t use bash explicitly.nndune supports multi-package development by simply dropping multiplenrepositories into the same directory.nnIt also supports multi-context builds, such as building againstnseveral opam roots/switches simultaneously. This helps maintainingnpackages across several versions of OCaml and gives cross-compilationnfor free.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/LPCIC/elpi'>elpi.1.13.8</a>
(1.13.8) ELPI - Embeddable λProlog Interpreter</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Claudio Sacerdoti Coen Enrico Tassi</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-or-later.html" target="_blank">LGPL-2.1-or-later</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/LPCIC/elpi'>homepage</a>)
      (<a href='https://github.com/LPCIC/elpi/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/elpi/elpi.1.13.8/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>ELPI implements a variant of λProlog enriched with Constraint Handling Rules,na programming language well suited to manipulate syntax trees with binders.nnELPI is designed to be embedded into larger applications written in OCaml asnan extension language. It comes with an API to drive the interpreter and nwith an FFI for defining built-in predicates and data types, as well asnquotations and similar goodies that are handy to adapt the language to the hostnapplication.nnThis package provides both a command line interpreter (elpi) and a library tonbe linked in other applications (eg by passing -package elpi to ocamlfind).nnThe ELPI programming language has the following features:nn- Native support for variable binding and substitution, via an Higher Ordern  Abstract Syntax (HOAS) embedding of the object language. The programmer needsn  not to care about De Bruijn indexes.nn- Native support for hypothetical context. When moving under a binder one cann  attach to the bound variable extra information that is collected when then  variable gets out of scope. For example when writing a type-checker then  programmer needs not to care about managing the typing context.nn- Native support for higher order unification variables, again via HOAS.n  Unification variables of the meta-language (λProlog) can be reused ton  represent the unification variables of the object language. The programmern  does not need to care about the unification-variable assignment map andn  cannot assign to a unification variable a term containing variables out ofn  scope, or build a circular assignment.nn- Native support for syntactic constraints and their meta-level handling rules.n  The generative semantics of Prolog can be disabled by turning a goal into an  syntactic constraint (suspended goal). A syntactic constraint is resumed asn  soon as relevant variables gets assigned. Syntactic constraints can ben  manipulated by constraint handling rules (CHR).nn- Native support for backtracking. To ease implementation of search.nn- The constraint store is extensible.  The host application can declaren  non-syntactic constraints and use custom constraint solvers to check theirn  consistency.nn- Clauses are graftable. The user is free to extend an existing program byn  inserting/removing clauses, both at runtime (using implication) and atn  compilation time by accumulating files.nnELPI is free software released under the terms of LGPL 2.1 or above.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://gitlab.inria.fr/gappa/gappa'>gappa.dev</a>
(dev) Tool intended for formally proving properties on numerical programs dealing with floating-point or fixed-point arithmetic</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Guillaume Melquiond</dd>
    <dt><b>license</b></dt><dd> CECILL - see <a href="https://gitlab.inria.fr/gappa/gappa" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://gitlab.inria.fr/gappa/gappa'>homepage</a>)
      (<a href='https://gitlab.inria.fr/gappa/gappa/-/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-coq-archive/extra-dev/packages/gappa/gappa.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://gitlab.inria.fr/zimmerma/ecm'>gmp-ecm.7.0.3</a>
(7.0.3) GMP-ECM library for the Elliptic Curve Method (ECM) for integer factorization</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Cyril Bouvier - David Cleaver - Pierrick Gaudry - Brian Gladman - Jim Fougeron - Laurent Fousse - Alexander Kruppa - Francois Morain - Dave Newman - Jason S. Papadopoulos - Paul Zimmermann</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/GPL-3.0.html" target="_blank">GPL-3.0</a> <a href="https://spdx.org/licenses/LGPL-3.0.html" target="_blank">LGPL-3.0</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://gitlab.inria.fr/zimmerma/ecm'>homepage</a>)
      (<a href='https://gitlab.inria.fr/zimmerma/ecm/-/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/gmp-ecm/gmp-ecm.7.0.3/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
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
    <dt><b>description</b></dt><dd>OCaml interface to GTK+3, gtksourceview3 library.nnSee https://garrigue.github.io/lablgtk/ for more information.</dd>
  </dl>
</details>

<details>
  <summary><a href='http://gitlab.inria.fr/fpottier/menhir'>menhirLib.dev</a>
(dev) Runtime support library for parsers generated by Menhir</summary>
  <dl>
    <dt><b>authors</b></dt><dd>François Pottier &lt;francois.pottier@inria.fr&gt; - Yann Régis-Gianas &lt;yrg@pps.univ-paris-diderot.fr&gt;</dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="http://gitlab.inria.fr/fpottier/menhir" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://gitlab.inria.fr/fpottier/menhir'>homepage</a>)
      (<a href='menhir@inria.fr'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/menhirLib/menhirLib.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='http://gitlab.inria.fr/fpottier/menhir'>menhirSdk.dev</a>
(dev) Compile-time library for auxiliary tools related to Menhir</summary>
  <dl>
    <dt><b>authors</b></dt><dd>François Pottier &lt;francois.pottier@inria.fr&gt; - Yann Régis-Gianas &lt;yrg@pps.univ-paris-diderot.fr&gt;</dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="http://gitlab.inria.fr/fpottier/menhir" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://gitlab.inria.fr/fpottier/menhir'>homepage</a>)
      (<a href='menhir@inria.fr'>bug reports</a>)
      (<a href='https://coq.inria.fr/opam/extra-dev/packages/menhirSdk/menhirSdk.dev/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/num/'>num.1.4</a>
(1.4) The legacy Num library for arbitrary-precision integer and rational arithmetic</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Valérie Ménissier-Morain Pierre Weis Xavier Leroy</dd>
    <dt><b>license</b></dt><dd> LGPL-2.1-only WITH OCaml-LGPL-linking-exception - see <a href="https://github.com/ocaml/num/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/num/'>homepage</a>)
      (<a href='https://github.com/ocaml/num/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/num/num.1.4/opam'>opam package</a>)
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
    <dt><b>description</b></dt><dd>This packages exposes the OCaml compiler libraries repackages undernthe toplevel names Ocaml_common, Ocaml_bytecomp, Ocaml_optcomp, ...</dd>
  </dl>
</details>

<details>
  <summary><a href='https://opam.ocaml.org/'>ocaml-config.1</a>
(1) OCaml Switch Configuration</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Louis Gesbert &lt;louis.gesbert@ocamlpro.com&gt; - David Allsopp &lt;david.allsopp@metastack.com&gt;</dd>
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
    <dt><b>authors</b></dt><dd>Frédéric Bour &lt;frederic.bour@lakaban.net&gt; - Jérémie Dimino &lt;jeremie@dimino.org&gt;</dd>
    <dt><b>license</b></dt><dd> LGPL-2.1-only WITH OCaml-LGPL-linking-exception - see <a href="https://github.com/ocaml-ppx/ocaml-migrate-parsetree" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml-ppx/ocaml-migrate-parsetree'>homepage</a>)
      (<a href='https://github.com/ocaml-ppx/ocaml-migrate-parsetree/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ocaml-migrate-parsetree/ocaml-migrate-parsetree.1.8.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Convert OCaml parsetrees between different versionsnnThis library converts parsetrees, outcometree and ast mappers betweenndifferent OCaml versions.  High-level functions help making PPXnrewriters independent of a compiler version.</dd>
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
    <dt><b>description</b></dt><dd>This package requires a matching implementation of OCaml,nand polls it to initialise specific variables like `ocaml:native-dynlink`</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/ocamlbuild/'>ocamlbuild.0.14.0</a>
(0.14.0) OCamlbuild is a build system with builtin rules to easily build most OCaml projects.</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Nicolas Pouillard Berke Durak</dd>
    <dt><b>license</b></dt><dd> LGPL-2.1-only WITH OCaml-LGPL-linking-exception - see <a href="https://github.com/ocaml/ocamlbuild/" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/ocamlbuild/'>homepage</a>)
      (<a href='https://github.com/ocaml/ocamlbuild/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ocamlbuild/ocamlbuild.0.14.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='http://projects.camlcity.org/projects/findlib.html'>ocamlfind.1.9.2</a>
(1.9.2) A library manager for OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Gerd Stolpmann &lt;gerd@gerd-stolpmann.de&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='http://projects.camlcity.org/projects/findlib.html'>homepage</a>)
      (<a href='https://github.com/ocaml/ocamlfind/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ocamlfind/ocamlfind.1.9.2/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Findlib is a library manager for OCaml. It provides a convention hownto store libraries, and a file format (META) to describe thenproperties of libraries. There is also a tool (ocamlfind) forninterpreting the META files, so that it is very easy to use librariesnin programs and scripts.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/backtracking/ocamlgraph/'>ocamlgraph.2.0.0</a>
(2.0.0) A generic graph library for OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Sylvain Conchon Jean-Christophe Filliâtre Julien Signoles</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/LGPL-2.1-only.html" target="_blank">LGPL-2.1-only</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/backtracking/ocamlgraph/'>homepage</a>)
      (<a href='https://github.com/backtracking/ocamlgraph/issues/new'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ocamlgraph/ocamlgraph.2.0.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Provides both graph data structures and graph algorithms</dd>
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
    <dt><b>description</b></dt><dd>Ppx_derivers is a tiny package whose sole purpose is to allownppx_deriving and ppx_type_conv to inter-operate gracefully when linkednas part of the same ocaml-migrate-parsetree driver.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml-ppx/ppx_deriving'>ppx_deriving.5.1</a>
(5.1) Type-driven code generation for OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>whitequark &lt;whitequark@whitequark.org&gt;</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml-ppx/ppx_deriving'>homepage</a>)
      (<a href='https://github.com/ocaml-ppx/ppx_deriving/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/ppx_deriving/ppx_deriving.5.1/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>ppx_deriving provides common infrastructure for generatingncode based on type definitions, and a set of useful pluginsnfor common tasks.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/ocaml-re'>re.1.10.3</a>
(1.10.3) RE is a regular expression library for OCaml</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jerome Vouillon - Thomas Gazagnaire - Anil Madhavapeddy - Rudi Grinberg - Gabriel Radanne</dd>
    <dt><b>license</b></dt><dd> LGPL-2.0 with OCaml linking exception - see <a href="https://github.com/ocaml/ocaml-re" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/ocaml-re'>homepage</a>)
      (<a href='https://github.com/ocaml/ocaml-re/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/re/re.1.10.3/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Pure OCaml regular expressions with:n* Perl-style regular expressions (module Re.Perl)n* Posix extended regular expressions (module Re.Posix)n* Emacs-style regular expressions (module Re.Emacs)n* Shell-style file globbing (module Re.Glob)n* Compatibility layer for OCaml&apos;s built-in Str module (module Re.Str)</dd>
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
    <dt><b>description</b></dt><dd>Projects that want to use the new result type defined in OCaml &gt;= 4.03nwhile staying compatible with older version of OCaml should use thenResult module defined in this library.</dd>
  </dl>
</details>

<details>
  <summary><a href=' '>seq.base</a>
(base) Compatibility package for OCaml&apos;s standard iterator type starting from 4.07.</summary>
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
  <summary><a href='https://github.com/janestreet/sexplib0'>sexplib0.v0.14.0</a>
(v0.14.0) Library containing the definition of S-expressions and some base converters</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Jane Street Group, LLC</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/janestreet/sexplib0'>homepage</a>)
      (<a href='https://github.com/janestreet/sexplib0/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/sexplib0/sexplib0.v0.14.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Part of Jane Street&apos;s Core librarynThe Core suite of libraries is an industrial strength alternative tonOCaml&apos;s standard library that was developed by Jane Street, thenlargest industrial user of OCaml.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/stdlib-shims'>stdlib-shims.0.3.0</a>
(0.3.0) Backport some of the new stdlib features to older compiler</summary>
  <dl>
    <dt><b>authors</b></dt><dd>The stdlib-shims programmers</dd>
    <dt><b>license</b></dt><dd> typeof OCaml system - see <a href="https://github.com/ocaml/stdlib-shims" target="_blank">homepage</a> for details</dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/stdlib-shims'>homepage</a>)
      (<a href='https://github.com/ocaml/stdlib-shims/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/stdlib-shims/stdlib-shims.0.3.0/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>Backport some of the new stdlib features to older compiler,nsuch as the Stdlib module.nnThis allows projects that require compatibility with older compiler tonuse these new features in their code.</dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/Z3prover/z3'>z3.4.8.13</a>
(4.8.13) Z3 solver</summary>
  <dl>
    <dt><b>authors</b></dt><dd>MSR</dd>
    <dt><b>license</b></dt><dd> <a href="https://spdx.org/licenses/MIT.html" target="_blank">MIT</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/Z3prover/z3'>homepage</a>)
      (<a href='https://github.com/Z3prover/z3/issues'>bug reports</a>)
      (<a href='https://github.com/coq/platform/tree/main/opam/opam-repository/packages/z3/z3.4.8.13/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd></dd>
  </dl>
</details>

<details>
  <summary><a href='https://github.com/ocaml/Zarith'>zarith.1.12</a>
(1.12) Implements arithmetic and logical operations over arbitrary-precision integers</summary>
  <dl>
    <dt><b>authors</b></dt><dd>Antoine Miné Xavier Leroy Pascal Cuoq</dd>
    <dt><b>license</b></dt><dd>unknown - please clarify with <a href="https://github.com/ocaml/Zarith" target="_blank">homepage</a></dd>
    <dt><b>links</b></dt><dd>
      (<a href='https://github.com/ocaml/Zarith'>homepage</a>)
      (<a href='https://github.com/ocaml/Zarith/issues'>bug reports</a>)
      (<a href='https://opam.ocaml.org/packages/zarith/zarith.1.12/opam'>opam package</a>)
    </dd>
    <dt><b>description</b></dt><dd>The Zarith library implements arithmetic and logical operations overnarbitrary-precision integers. It uses GMP to efficiently implementnarithmetic over big integers. Small integers are represented as Camlnunboxed integers, for speed and space economy.</dd>
  </dl>
</details>

