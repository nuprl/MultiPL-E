<?php
// You are given a word. Your task is to find the closest vowel that stands between 
// two consonants from the right side of the word (case sensitive).
// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
// find any vowel met the above condition. 
// You may assume that the given string contains English letter only.
// Example:
// get_closest_vowel("yogurt") ==> "u"
// get_closest_vowel("FULL") ==> "U"
// get_closest_vowel("quick") ==> ""
// get_closest_vowel("ab") ==> ""
function get_closest_vowel($word) {
    $vowels = ['a', 'e', 'i', 'o', 'u'];
    $consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'];
    $word = strtolower($word);
    $word = str_split($word);
    $word = array_reverse($word);
    $vowel_index = 0;
    $consonant_index = 0;
    $vowel_found = false;
    $consonant_found = false;
    $vowel_position = 0;
    $consonant_position = 0;
    $vowel_distance = 0;
    $consonant_distance = 0;
    $vowel_closest = '';
    $consonant_closest = '';
    $vowel_closest_distance = 0;
    $consonant_closest_distance = 0;
    $vowel_closest_position = 0;
    $consonant_closest_position = 0;
    $vowel_closest_index = 0;
    $consonant_closest_index = 0;
    $vowel_closest_found = false;
    $consonant_closest_found = false;
    $vowel_closest_distance = 0;
    $consonant_closest_distance = 0;
    $vowel_closest_position = 0;
    $consonant_closest_position = 0;
    $vowel_closest_index = 0;
    $consonant_closest_index = 0;
    $vowel_closest_found = false;
    $consonant_closest_found = false;
    for ($i = 0; $i < count($word); $i++)

function candidate(...$args) {
    return get_closest_vowel(...$args);
}

function test(): void {
    if (candidate('yogurt') !== 'u') { throw new Exception("Test failed!"); }
    if (candidate('full') !== 'u') { throw new Exception("Test failed!"); }
    if (candidate('easy') !== '') { throw new Exception("Test failed!"); }
    if (candidate('eAsy') !== '') { throw new Exception("Test failed!"); }
    if (candidate('ali') !== '') { throw new Exception("Test failed!"); }
    if (candidate('bad') !== 'a') { throw new Exception("Test failed!"); }
    if (candidate('most') !== 'o') { throw new Exception("Test failed!"); }
    if (candidate('ab') !== '') { throw new Exception("Test failed!"); }
    if (candidate('ba') !== '') { throw new Exception("Test failed!"); }
    if (candidate('quick') !== '') { throw new Exception("Test failed!"); }
    if (candidate('anime') !== 'i') { throw new Exception("Test failed!"); }
    if (candidate('Asia') !== '') { throw new Exception("Test failed!"); }
    if (candidate('Above') !== 'o') { throw new Exception("Test failed!"); }
}

test();