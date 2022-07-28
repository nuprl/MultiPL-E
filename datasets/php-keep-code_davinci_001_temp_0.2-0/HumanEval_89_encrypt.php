<?php
// Create a function encrypt that takes a string as an argument and
// returns a string encrypted with the alphabet being rotated. 
// The alphabet should be rotated in a manner such that the letters 
// shift down by two multiplied to two places.
// For example:
// encrypt('hi') returns 'lm'
// encrypt('asdfghjkl') returns 'ewhjklnop'
// encrypt('gf') returns 'kj'
// encrypt('et') returns 'ix'
function encrypt($s) {
	$alphabet = 'abcdefghijklmnopqrstuvwxyz';
	$newAlphabet = '';
	$i = 0;
	while ($i < strlen($alphabet)) {
		$newAlphabet .= $alphabet[$i+2];
		$i++;
	}
	$newAlphabet .= $alphabet[0];
	$newAlphabet .= $alphabet[1];
	$newAlphabet = str_split($newAlphabet);
	$s = str_split($s);
	$newString = '';
	$i = 0;
	while ($i < strlen($s)) {
		$newString .= $newAlphabet[$alphabet.index($s[$i])];
		$i++;
	}
	return $newString;
}

echo encrypt('hi');
echo '<br>';
echo encrypt('asdfghjkl');
echo '<br>';
echo encrypt('gf');
echo '<br>';
echo encrypt('et');
echo '<br>';

function candidate(...$args) {
    return encrypt(...$args);
}

function test(): void {
    if (candidate("hi") !== "lm") { throw new Exception("Test failed!"); }
    if (candidate("asdfghjkl") !== "ewhjklnop") { throw new Exception("Test failed!"); }
    if (candidate("gf") !== "kj") { throw new Exception("Test failed!"); }
    if (candidate("et") !== "ix") { throw new Exception("Test failed!"); }
    if (candidate("faewfawefaewg") !== "jeiajeaijeiak") { throw new Exception("Test failed!"); }
    if (candidate("hellomyfriend") !== "lippsqcjvmirh") { throw new Exception("Test failed!"); }
    if (candidate("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh") !== "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl") { throw new Exception("Test failed!"); }
    if (candidate("a") !== "e") { throw new Exception("Test failed!"); }
}

test();