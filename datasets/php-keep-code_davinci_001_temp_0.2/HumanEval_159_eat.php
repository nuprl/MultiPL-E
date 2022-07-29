<?php
// You're a hungry rabbit, and you already have eaten a certain number of carrots,
// but now you need to eat more carrots to complete the day's meals.
// you should return an array of [ total number of eaten carrots after your meals,
// the number of carrots left after your meals ]
// if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
// Example:
// * eat(5, 6, 10) -> [11, 4]
// * eat(4, 8, 9) -> [12, 1]
// * eat(1, 10, 10) -> [11, 0]
// * eat(2, 11, 5) -> [7, 0]
// Variables:
// @number : integer
// the number of carrots that you have eaten.
// @need : integer
// the number of carrots that you need to eat.
// @remaining : integer
// the number of remaining carrots thet exist in stock
// Constrain:
// * 0 <= number <= 1000
// * 0 <= need <= 1000
// * 0 <= remaining <= 1000
// Have fun :)
function eat($number, $need, $remaining) {
    $total = $number + $remaining;
    if ($total < $need) {
        $need = $total;
    }
    return [$total, $need - $total];
}

$number = rand(0, 1000);
$need = rand(0, 1000);
$remaining = rand(0, 1000);

$result = eat($number, $need, $remaining);

echo "number: $number\n";
echo "need: $need\n";
echo "remaining: $remaining\n";
echo "result: " . implode(', ', $result) . "\n";

function candidate(...$args) {
    return eat(...$args);
}

function test(): void {
    if (candidate(5, 6, 10) !== array(11, 4)) { throw new Exception("Test failed!"); }
    if (candidate(4, 8, 9) !== array(12, 1)) { throw new Exception("Test failed!"); }
    if (candidate(1, 10, 10) !== array(11, 0)) { throw new Exception("Test failed!"); }
    if (candidate(2, 11, 5) !== array(7, 0)) { throw new Exception("Test failed!"); }
    if (candidate(4, 5, 7) !== array(9, 2)) { throw new Exception("Test failed!"); }
    if (candidate(4, 5, 1) !== array(5, 0)) { throw new Exception("Test failed!"); }
}

test();