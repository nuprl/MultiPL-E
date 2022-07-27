<?php
// Filter an input list of strings only for ones that contain given substring
// >>> filter_by_substring([], 'a')
// []
// >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
// ['abc', 'bacd', 'array']
function filter_by_substring($strings, $substring) {
    $result = [];
    foreach ($strings as $string) {
        if (strpos($string, $substring) !== false) {
            $result[] = $string;
        }
    }
    return $result;
}

$strings = ['abc', 'bacd', 'cde', 'array'];
$substring = 'a';
$result = filter_by_substring($strings, $substring);
var_dump($result);

function candidate(...$args) {
    return filter_by_substring(...$args);
}

function test(): void {
    if (candidate(array(), 'john') !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array('xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'), 'xxx') !== array('xxx', 'xxxAAA', 'xxx')) { throw new Exception("Test failed!"); }
    if (candidate(array('xxx', 'asd', 'aaaxxy', 'john doe', 'xxxAAA', 'xxx'), 'xx') !== array('xxx', 'aaaxxy', 'xxxAAA', 'xxx')) { throw new Exception("Test failed!"); }
    if (candidate(array('grunt', 'trumpet', 'prune', 'gruesome'), 'run') !== array('grunt', 'prune')) { throw new Exception("Test failed!"); }
}

test();