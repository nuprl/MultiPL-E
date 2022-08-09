#!/bin/bash

# Some nodes on the cluster have ancient versions of gcc.

grep -c -F "/4.8.2" ../experiments/cpp-*/*.results.yaml | grep -v ":0"
grep -c -F "In file included from /shared/centos7/gcc/9.2.0-skylake/" ../experiments/cpp-*/*.results.yaml | grep -v ":0"
