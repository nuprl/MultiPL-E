#!/bin/bash
# Check if two words have the same characters.
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
# True
# >>> same_chars('abcd', 'dddddddabc')
# True
# >>> same_chars('dddddddabc', 'abcd')
# True
# >>> same_chars('eabcd', 'dddddddabc')
# False
# >>> same_chars('abcd', 'dddddddabce')
# False
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
# False
same_chars() {
	[[ "$1" == "$2" ]] && return 0
	local -i i=0
	local -i j=0
	local -i k=0
	local -i l=0
	local -i m=0
	local -i n=0
	local -i o=0
	local -i p=0
	local -i q=0
	local -i r=0
	local -i s=0
	local -i t=0
	local -i u=0
	local -i v=0
	local -i w=0
	local -i x=0
	local -i y=0
	local -i z=0
	local -i A=0
	local -i B=0
	local -i C=0
	local -i D=0
	local -i E=0
	local -i F=0
	local -i G=0
	local -i H=0
	local -i I=0
	local -i J=0
	local -i K=0
	local -i L=0
	local -i M=0
	local -i N=0
	local -i O=0
	local -i P=0
	local -i Q=0
	local -i R=0
	local -i S=0
	local -i T=0
	local -i U=0
	local -i V=0
	local -i W=0
	local -i X=0
	local -i Y=0
	local -i Z=0
	local -i a=0
	local -i b=0
	local -i c=0
	local -i d=0
	local -i e=0
	local -i f=0
	local -i g=0
	local -i h=0
	local -i i=0
	local -i j=0
	local -i k=0
	local -i l=0
	local -i m=0
	local -i n=0
	local -i o=0
	local -i p=0
	local -i

}

candidate() {
    local res=$(same_chars "$@")
    echo $res
}

test() {
        x0=$(candidate "eabcdzzzz" "dddzzzzzzzddeddabc")
    assert_equals true "${x0[*]}"

        x1=$(candidate "abcd" "dddddddabc")
    assert_equals true "${x1[*]}"

        x2=$(candidate "dddddddabc" "abcd")
    assert_equals true "${x2[*]}"

        x3=$(candidate "eabcd" "dddddddabc")
    assert_equals false "${x3[*]}"

        x4=$(candidate "abcd" "dddddddabcf")
    assert_equals false "${x4[*]}"

        x5=$(candidate "eabcdzzzz" "dddzzzzzzzddddabc")
    assert_equals false "${x5[*]}"

        x6=$(candidate "aabb" "aaccc")
    assert_equals false "${x6[*]}"

}