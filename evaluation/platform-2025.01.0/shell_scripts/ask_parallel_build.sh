#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### USER CHOICES #####################

# parallel or sequential build

if [ -z "${COQ_PLATFORM_PARALLEL:+x}" ] || [ -z "${COQ_PLATFORM_JOBS:+x}" ]
then
cat <<EOH
=============================== PARALLEL BUILD ===============================
The Coq Platform opam build has two levels of parallelism:

- parallel build of (independent) opam packages
- parallel build inside the make of each opam package

Since a single coqc call can take more than 1 GB of RAM and since the two
above kinds of parallelism multiply, the total amount of memory can be large.
But it is not as bad as one might expect: tests show that a full parallel
build takes less than 14GB of RAM with 15 parallel make jobs.

With 32 GB of RAM a parallel package build with 12 make jobs is recommended.
With 16 GB of RAM a parallel package build with 4 make jobs is recommended.
With 8 GB of RAM a sequential package build with 4 make jobs is recommended.
With 4 GB+1GB swap a sequential package build with 2 make jobs is recommended.
With less RAM, you might have to remove failing packages, e.g. VST.
In order to remove packages, just edit the file in the package_picks folder.

In case these recommendations don't work for you, please report an issue at:
https://github.com/coq/platform/issues
=============================== PARALLEL BUILD ===============================
EOH
  ask_user_opt2_cancel "Build opam packages parallel (p) or sequential (s)?" pP "parallel" sS "sequential"
  COQ_PLATFORM_PARALLEL=$ANSWER
  ask_user_number "Number of parallel make jobs" 1 16
  COQ_PLATFORM_JOBS=$ANSWER
fi
