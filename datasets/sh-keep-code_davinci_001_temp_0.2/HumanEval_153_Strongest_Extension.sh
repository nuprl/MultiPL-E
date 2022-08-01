#!/bin/bash
# You will be given the name of a class (a string) and a list of extensions.
# The extensions are to be used to load additional classes to the class. The
# strength of the extension is as follows: Let CAP be the number of the uppercase
# letters in the extension's name, and let SM be the number of lowercase letters 
# in the extension's name, the strength is given by the fraction CAP - SM. 
# You should find the strongest extension and return a string in this 
# format: ClassName.StrongestExtensionName.
# If there are two or more extensions with the same strength, you should
# choose the one that comes first in the list.
# For example, if you are given "Slices" as the class and a list of the
# extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
# return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension 
# (its strength is -1).
# Example:
# for Strongest_Extension('my_class', ['AA', 'Be', 'CC']) == 'my_class.AA'
#
# $1 is a string
# $2 is a space-separated list
Strongest_Extension() {
    local class="$1"
    local extensions="$2"
    local strength=0
    local strongest_extension=''
    for extension in $extensions; do
        local ext_strength=$(echo $extension | tr -dc '[:upper:]' | wc -c)
        local ext_strength=$(( $ext_strength - $(echo $extension | tr -dc '[:lower:]' | wc -c) ))
        if [ $ext_strength -gt $strength ]; then
            strength=$ext_strength
            strongest_extension=$extension
        fi
    done
    echo "$class.$strongest_extension"

}

candidate() {
    Strongest_Extension "$@"
}

set -e
run_test() {
    [[ $(candidate "Watashi" "tEN niNE eIGHt8OKe") = "Watashi.eIGHt8OKe" ]]
    [[ $(candidate "Boku123" "nani NazeDa YEs.WeCaNe 32145tggg") = "Boku123.YEs.WeCaNe" ]]
    [[ $(candidate "__YESIMHERE" "t eMptY nothing zeR00 NuLl__ 123NoooneB321") = "__YESIMHERE.NuLl__" ]]
    [[ $(candidate "K" "Ta TAR t234An cosSo") = "K.TAR" ]]
    [[ $(candidate "__HAHA" "Tab 123 781345 -_-") = "__HAHA.123" ]]
    [[ $(candidate "YameRore" "HhAas okIWILL123 WorkOut Fails -_-") = "YameRore.okIWILL123" ]]
    [[ $(candidate "finNNalLLly" "Die NowW Wow WoW") = "finNNalLLly.WoW" ]]
    [[ $(candidate "_" "Bb 91245") = "_.Bb" ]]
    [[ $(candidate "Sp" "671235 Bb") = "Sp.671235" ]]
}

run_test