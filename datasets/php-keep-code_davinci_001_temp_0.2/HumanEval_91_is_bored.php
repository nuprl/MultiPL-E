<?php
// You'll be given a string of words, and your task is to count the number
// of boredoms. A boredom is a sentence that starts with the word "I".
// Sentences are delimited by '.', '?' or '!'.
// For example:
// >>> is_bored("Hello world")
// 0
// >>> is_bored("The sky is blue. The sun is shining. I love this weather")
// 1
function is_bored($S) {
    $S = explode('.', $S);
    $count = 0;
    foreach ($S as $s) {
        if (substr($s, 0, 2) == 'I ') {
            $count++;
        }
    }
    return $count;
}

$S = "The sky is blue. The sun is shining. I love this weather";
echo is_bored($S);

function candidate(...$args) {
    return is_bored(...$args);
}

function test(): void {
    if (candidate("Hello world") !== 0) { throw new Exception("Test failed!"); }
    if (candidate("Is the sky blue?") !== 0) { throw new Exception("Test failed!"); }
    if (candidate("I love It !") !== 1) { throw new Exception("Test failed!"); }
    if (candidate("bIt") !== 0) { throw new Exception("Test failed!"); }
    if (candidate("I feel good today. I will be productive. will kill It") !== 2) { throw new Exception("Test failed!"); }
    if (candidate("You and I are going for a walk") !== 0) { throw new Exception("Test failed!"); }
}

test();