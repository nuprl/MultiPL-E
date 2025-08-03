#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Set ocamlc stack size on Windows #####################

DUMPBIN='C:/Program Files/Microsoft Visual Studio/2022/Professional/VC/Tools/MSVC/14.41.34120/bin/Hostx64/x64/dumpbin.exe'

function show_stack_size {
    # If dumpbin exists, we use it to check the operation of our set_stack_size program
    if [ -f "$DUMPBIN" ]
    then
        "$DUMPBIN" /HEADERS "$1" | grep "size of stack reserve"
    fi
}

function do_set_stack_size {
    echo "Setting stack size of $1 to $2"
    show_stack_size "$1"
    ./set_stack_size.exe "$1" "$2"
    show_stack_size "$1"
}

if [[ "$OSTYPE" == cygwin ]]
then
    pushd windows/set_stack_size
    ocamlopt -o set_stack_size unix.cmxa set_stack_size.ml
    do_set_stack_size "$(cygpath -aw $(which ocamlc.exe))" 67108864
    do_set_stack_size "$(cygpath -aw $(which ocamlc.opt.exe))" 67108864
    do_set_stack_size "$(cygpath -aw $(which ocamlopt.exe))" 67108864
    do_set_stack_size "$(cygpath -aw $(which ocamlopt.opt.exe))" 67108864
    # do_set_stack_size "$(cygpath -aw $(which coqc.exe))" 67108864
    # do_set_stack_size "$(cygpath -aw $(which coqnative.exe))" 67108864
    # do_set_stack_size "$(cygpath -aw $(which coqidetop.opt.exe))" 67108864
    popd
fi
