<?php
// You are given a string s.
// if s[i] is a letter, reverse its case from lower to upper or vise versa, 
// otherwise keep it as it is.
// If the string contains no letters, reverse the string.
// The function should return the resulted string.
// Examples
// solve("1234") = "4321"
// solve("ab") = "AB"
// solve("#a@C") = "#A@c"
function solve($s) {
    $result = '';
    $letters = array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');
    $uppers = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
    $lower = array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');
    $upper = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
    $i = 0;
    while ($i < strlen($s)) {
        if (in_array($s[$i], $letters)) {
            if (in_array($s[$i], $uppers)) {
                $result .= $lower[array_search($s[$i], $uppers)];
            } else {
                $result .= $uppers[array_search($s[$i], $lower)];
            }
        } else {
            $result .= $s[$i];
        }
        $i++;
    }
    return $result;
}

$s = "1234";
echo solve

function candidate(...$args) {
    return solve(...$args);
}

function test(): void {
    if (candidate("AsDf") !== "aSdF") { throw new Exception("Test failed!"); }
    if (candidate("1234") !== "4321") { throw new Exception("Test failed!"); }
    if (candidate("ab") !== "AB") { throw new Exception("Test failed!"); }
    if (candidate("#a@C") !== "#A@c") { throw new Exception("Test failed!"); }
    if (candidate("#AsdfW^45") !== "#aSDFw^45") { throw new Exception("Test failed!"); }
    if (candidate("#6@2") !== "2@6#") { throw new Exception("Test failed!"); }
    if (candidate("#$a^D") !== "#$A^d") { throw new Exception("Test failed!"); }
    if (candidate("#ccc") !== "#CCC") { throw new Exception("Test failed!"); }
}

test();