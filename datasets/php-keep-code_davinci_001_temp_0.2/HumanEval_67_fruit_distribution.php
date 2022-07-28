<?php
// In this task, you will be given a string that represents a number of apples and oranges 
// that are distributed in a basket of fruit this basket contains 
// apples, oranges, and mango fruits. Given the string that represents the total number of 
// the oranges and apples and an integer that represent the total number of the fruits 
// in the basket return the number of the mango fruits in the basket.
// for examble:
// fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
// fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
// fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
// fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
function fruit_distribution($s, $n) {
    $arr = explode(" ", $s);
    $apples = 0;
    $oranges = 0;
    $mangos = 0;
    foreach ($arr as $item) {
        if (strpos($item, "apples") !== false) {
            $apples = intval(substr($item, 0, strpos($item, "apples")));
        } else if (strpos($item, "oranges") !== false) {
            $oranges = intval(substr($item, 0, strpos($item, "oranges")));
        }
    }
    $mangos = $n - $apples - $oranges;
    return $mangos;
}

$s = "5 apples and 6 oranges";
$n = 19;
echo fruit_distribution($s, $n);


function candidate(...$args) {
    return fruit_distribution(...$args);
}

function test(): void {
    if (candidate('5 apples and 6 oranges', 19) !== 8) { throw new Exception("Test failed!"); }
    if (candidate('5 apples and 6 oranges', 21) !== 10) { throw new Exception("Test failed!"); }
    if (candidate('0 apples and 1 oranges', 3) !== 2) { throw new Exception("Test failed!"); }
    if (candidate('1 apples and 0 oranges', 3) !== 2) { throw new Exception("Test failed!"); }
    if (candidate('2 apples and 3 oranges', 100) !== 95) { throw new Exception("Test failed!"); }
    if (candidate('2 apples and 3 oranges', 5) !== 0) { throw new Exception("Test failed!"); }
    if (candidate('1 apples and 100 oranges', 120) !== 19) { throw new Exception("Test failed!"); }
}

test();