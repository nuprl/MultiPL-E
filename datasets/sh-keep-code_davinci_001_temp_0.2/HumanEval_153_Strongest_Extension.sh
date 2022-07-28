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
Strongest_Extension() {
    local class=$1
    shift
    local extensions=("$@")
    local strength=0
    local strongest_extension=''
    for extension in "${extensions[@]}"; do
        local cap=$(echo "$extension" | tr -d '[:lower:]' | wc -c)
        local sm=$(echo "$extension" | tr -d '[:upper:]' | wc -c)
        local ext_strength=$(echo "scale=2; $cap - $sm" | bc)
        if (( $(echo "$ext_strength > $strength" | bc -l) )); then
            strength=$ext_strength
            strongest_extension=$extension
        fi
    done
    echo "$class.$strongest_extension"

}

candidate() {
    local res=$(Strongest_Extension "$@")
    echo $res
}

test() {
    declare -a x0=('tEN' 'niNE' 'eIGHt8OKe')
    x1=$(candidate 'Watashi' "${x0[*]}")
    assert_equals 'Watashi.eIGHt8OKe' "${x1[*]}"

    declare -a x2=('nani' 'NazeDa' 'YEs.WeCaNe' '32145tggg')
    x3=$(candidate 'Boku123' "${x2[*]}")
    assert_equals 'Boku123.YEs.WeCaNe' "${x3[*]}"

    declare -a x4=('t' 'eMptY' 'nothing' 'zeR00' 'NuLl__' '123NoooneB321')
    x5=$(candidate '__YESIMHERE' "${x4[*]}")
    assert_equals '__YESIMHERE.NuLl__' "${x5[*]}"

    declare -a x6=('Ta' 'TAR' 't234An' 'cosSo')
    x7=$(candidate 'K' "${x6[*]}")
    assert_equals 'K.TAR' "${x7[*]}"

    declare -a x8=('Tab' '123' '781345' '-_-')
    x9=$(candidate '__HAHA' "${x8[*]}")
    assert_equals '__HAHA.123' "${x9[*]}"

    declare -a x10=('HhAas' 'okIWILL123' 'WorkOut' 'Fails' '-_-')
    x11=$(candidate 'YameRore' "${x10[*]}")
    assert_equals 'YameRore.okIWILL123' "${x11[*]}"

    declare -a x12=('Die' 'NowW' 'Wow' 'WoW')
    x13=$(candidate 'finNNalLLly' "${x12[*]}")
    assert_equals 'finNNalLLly.WoW' "${x13[*]}"

    declare -a x14=('Bb' '91245')
    x15=$(candidate '_' "${x14[*]}")
    assert_equals '_.Bb' "${x15[*]}"

    declare -a x16=('671235' 'Bb')
    x17=$(candidate 'Sp' "${x16[*]}")
    assert_equals 'Sp.671235' "${x17[*]}"

}