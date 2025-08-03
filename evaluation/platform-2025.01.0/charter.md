# Coq Platform charter

## Primary / user facing goals

The primary goal of the Coq Platform is to provide a stable and dependable extended platform for advanced usages of Coq in industry, education and research. It is inspired by the Windows installer of Coq, which from version 8.8 to 8.12 has provided the option to install a selection of additional external Coq packages. The primary goal of the Coq Platform is to improve the situation for Coq users. It also has the potential to improve the situation for developers. The corresponding secondary goals are given in the next section.

In more detail, the primary goals are:

**Ease of use**: Provide an easy and fast way to install a usable Coq system. Ease of installation is especially important in eduction, where each course attendee has to be able to install Coq with a known feature set with reasonable effort. Also for industrial users, which sometimes start using Coq by looking at some non trivial research projects, an easy to install system leaves a good first impression.

**Completeness**: The easy installation shall include, in addition to the core Coq system, commonly used plugins, libraries and tools. The definition of "commonly used" is, of course, difficult. For the legacy Windows installer, packages have been added either on request of users or teachers or because several research projects use a package as pre requisite. It would be ideal if a large number of important research projects would compile with the packages provided with the extended platform.

**Stability**: The composition of the Coq Platform, that is the selection of packages, should be stable. I.e., it should be a rare event that a package is removed from the platform and updates of included packages should have a reasonable compatibility impact. This means that packages should only be added if the authors and maintainers of a package agree to provide a certain level of maintenance. Finding a compromise between this goal and the *Completeness* goal will likely be difficult and require some curation.

**Tested interoperability**: Some Coq libraries are tested with specific fixed versions of pre requisites. Other developments are tested with other versions of the same pre requisites. This has the effect that such developments cannot be used together. In the Coq Platform only one version of each library or plugin shall be used and interoperability shall be tested with dedicated interoperability test cases. A specific version of OCaml will be selected and used.

**Release plan**: The Coq Platform shall have a release schedule which is coupled to the release schedule of core Coq. The platform should be released reasonably soon after each Coq release. This gives both users and maintainers of platform components a time frame for planning their work. Details on how the release schedule will work can be found in CEP [#52](https://github.com/coq/ceps/pull/52).

**Releases only**: In the past the legacy Windows installer did sometimes pick intermediate versions of packages in case the most recent release did not build with current Coq. For the platform this shall be avoided. The platform's more flexible release time frame in addition to the beta phase of core Coq releases should be sufficient to make a release of each package or, in case this is not possible, to patch the most recent package release to be compatible with latest core Coq.

**Cross platform**: The Coq Platform shall be easy to install on all systems supported by core Coq, that is Linux, Windows and Mac. Since compilation of the platform takes considerable time, binary releases of the platform shall be made available on all supported platforms.

**Standard**: By defining a well-documented set of tested interoperable Coq packages, the platform will propose a standard Coq distribution that maintainers of Linux distributions or other package repositories should be able to make available if they wish to.

## Secondary / developer facing goals

**Developer support**: For developers of plugins, building the Coq Platform via opam shall also be supported on Linux, Windows and Mac. The opam repository shall be setup such that it is possible to create exactly the same package configuration as included in the most recent or any previous binary release. Furthermore the Coq Platform shall provide a method to automatically setup a working Coq developer environment on all supported platforms (compiled from sources).

**Decoupling** In the past the release schedule of Coq and the extended platform delivered with the Windows installer had a bad influence on each other. On the one hand, providing a stable extended platform with each Coq release frequently lead to delays in the release schedule of Coq. On the other hand, attempts to have as little impact on the Coq schedule as possible lead to suboptimal version pickings for the extensions provided with the platform. In the end delivering a set of packages with each Coq release created an artificial circular dependency between core Coq and the packages, which led to substantial organizational difficulties. An important goal of the Coq Platform is to re-establish a manageable dependency structure.

## Summary of stakeholders

Here are the different categories of expected stakeholders for the Coq Platform:
- **Users**: in particular newcomers, students, teachers, industrial users, academic researchers, artifact reviewers.
- **Package authors and maintainers**.
- **Packagers**: maintainers of Linux distributions and other package repositories.
- **Coq developers**: in particular, Coq release managers who pass on some of their attributions to the platform.

## Package inclusion process

- Packages are typically included on user request via a github issue.

- Requests should contain a justification. Good justifications are usage of the package in a regular course or a course with more than 25 attendees or usage of the package as prerequisite in at least three other packages or research developments by authors other than the author of the original package.

- The author(s) or current maintainer(s) of the package shall agree to the inclusion of their package in the Coq Platform. This means that they agree to put reasonable effort into releasing a version of the package compatible with each new Coq release shortly after every Coq release and to maintain some relative stability between each release. The agreement of the authors is given via a comment in the respective github issue.

- All the dependencies of a platform package are also officially part of the platform. This means in particular that, apart from dependencies that are outside the Coq ecosystem and are well-known to be stable and well supported, the maintainers of the dependencies should also agree to the inclusion in the platform and commit to keep producing new compatible releases which are relatively stable. As part of the stability commitment, maintainers should refrain from adding new dependencies that are not already part of the platform without raising the question with the platform maintainers.

## Package exclusion process

- The exclusion of a package shall be a rare event.

- In case the package authors / maintainers cannot maintain compatibility to a new Coq release in the expected time, for one release the curator will try to organize maintenance otherwise. The platform curator will also have timely discussions with the Coq team in case changes in core Coq might lead to substantial maintenance effort in a platform package. If the maintenance problem continues for the next release, the curator can remove a package from the platform. The platform users shall be informed about such a decision as early as possible, at least 1 month before a platform release.

## Questions to be resolved

### Quality constraints for included packages

For now, we haven't set any quality constraints beyond the fact that the packages are sufficiently used and stable. But other constraints, such as the existence of complete documentation, might be set in the future.

### Licensing constraints for included packages

The current platform includes packages under a variety of licenses, including non-open-source licenses (in the case of CompCert). We might evolve this (non-)requirement in the future. This question is linked to the tiers question below.

### Several tiers

If it turns out that it would help providing timely releases or solving the licensing questions raised above, we might decide to provide several tiers of the Coq Platform. For instance, we could provide both a core Coq Platform that would be released only weeks after a Coq release and provide a basic set of Coq packages with strict inclusion criteria, and an extended Coq Platform that would be released months after and provide a larger set of packages with more lax inclusion criteria. If we were to provide several tiers, the naming scheme for those is still to be determined.

### Other questions?

If you do see other questions that should be addressed in the platform charter, do not hesitate to open a pull request to contribute.

## The Coq Platform from a technical point of view

Technically the Coq Platform is a GitHub repo containing:

- Information on packages included in the platform and their versions, sources, build instructions. This information is either given as an opam repo, or there will be automated scripts to generate the opam repo from it.

- A CI setup which tests if the Coq Platform builds on Linux, Windows and Mac and which creates the binary setups for these platforms.

- Additional scripts and tools, e.g. for automatic setup of a Coq development environment.

- Possibly patches for included packages, although the goal is to avoid patching packages and instead to fix issues upstream.

- Discussions (in form of issues) on the package inclusion and exclusion.

## Steps

- [x] Move the current Windows Installer from core Coq to the platform
- [x] Decouple core Coq CI from all the packages the legacy Windows installer used to build
- [x] Ensure that platform CI runs with Coq master and release branches daily
- [x] Create a binary package for Linux (Snap Store)
- [ ] Create a binary package for Mac (Apple store)
- [x] Create an opam repo for the platform (or do this based on the existing Coq repo)
- [x] Provide developer setups on all platforms
