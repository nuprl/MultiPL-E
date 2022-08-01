#!/bin/bash
# You are given a string s.
# if s[i] is a letter, reverse its case from lower to upper or vise versa, 
# otherwise keep it as it is.
# If the string contains no letters, reverse the string.
# The function should return the resulted string.
# Examples
# solve("1234") = "4321"
# solve("ab") = "AB"
# solve("#a@C") = "#A@c"
#
# $1 is a string
solve() {
	# your code here
	if [[ $1 =~ [a-zA-Z] ]]; then
		echo "$1" | tr '[:lower:]' '[:upper:]' | tr '[:upper:]' '[:lower:]'
	else
		echo "$1" | rev
	fi

}

candidate() {
    solve "$@"
}

run_test() {
    [[ $(candidate AsDf) = aSdF ]]
    [[ $(candidate 1234) = 4321 ]]
    [[ $(candidate ab) = AB ]]
    [[ $(candidate "#a@C") = "#A@c" ]]
    [[ $(candidate "#AsdfW^45") = "#aSDFw^45" ]]
    [[ $(candidate "#6@2") = "2@6#" ]]
    [[ $(candidate "#$a^D") = "#$A^d" ]]
    [[ $(candidate "#ccc") = "#CCC" ]]
}

run_test