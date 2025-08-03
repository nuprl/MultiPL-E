Please note that the Coq Platform snap is no longer supported - it is pretty much impossible to build.

- With core22 snap removed the possibility to increase the memory size for the multipass build environment above the default of 2GB.
- See https://snapcraft.io/docs/build-providers, search for "These environmental variables are not supported when building a core22 snap." in the above page.

- LXD has been instable since February 2023 (issues with the terminal connection when running longer time on heavily loaded machines like github runners)

- On Github CI we anyway did run snap without VM since a while since no method worked any more