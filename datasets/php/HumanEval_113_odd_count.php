<?php
// Given a list of strings, where each string consists of only digits, return a list.
// Each element i of the output should be "the number of odd elements in the
// string i of the input." where all the i's should be replaced by the number
// of odd digits in the i'th string of the input.
// >>> odd_count(['1234567'])
// ["the number of odd elements 4n the str4ng 4 of the 4nput."]
// >>> odd_count(['3',"11111111"])
// ["the number of odd elements 1n the str1ng 1 of the 1nput.",
// "the number of odd elements 8n the str8ng 8 of the 8nput."]
function odd_count($lst) {
    $result = [];
    foreach ($lst as $str) {
        $count = 0;
        for ($i = 0; $i < strlen($str); $i++) {
            if (intval($str[$i]) % 2 != 0) {
                $count++;
            }
        }
        $result[] = "the number of odd elements $count in the string " .
            "$count of the input.";
    }
    return $result;
}

function candidate(...$args) {
    return odd_count(...$args);
}

function test(): void {
    if (candidate(array('1234567')) !== array('the number of odd elements 4n the str4ng 4 of the 4nput.')) { throw new Exception("Test failed!"); }
    if (candidate(array('3', '11111111')) !== array('the number of odd elements 1n the str1ng 1 of the 1nput.', 'the number of odd elements 8n the str8ng 8 of the 8nput.')) { throw new Exception("Test failed!"); }
    if (candidate(array('271', '137', '314')) !== array('the number of odd elements 2n the str2ng 2 of the 2nput.', 'the number of odd elements 3n the str3ng 3 of the 3nput.', 'the number of odd elements 2n the str2ng 2 of the 2nput.')) { throw new Exception("Test failed!"); }
}

test();