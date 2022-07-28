<?php
// Given a positive integer n, return a tuple that has the number of even and odd
// integer palindromes that fall within the range(1, n), inclusive.
// Example 1:
// Input: 3
// Output: (1, 2)
// Explanation:
// Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
// Example 2:
// Input: 12
// Output: (4, 6)
// Explanation:
// Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
// Note:
// 1. 1 <= n <= 10^3
// 2. returned tuple has the number of even and odd integer palindromes respectively.
function even_odd_palindrome($n) {
    $even = 0;
    $odd = 0;
    for ($i = 1; $i <= $n; $i++) {
        $num = $i;
        $reverse = 0;
        while ($num > 0) {
            $reverse = $reverse * 10 + $num % 10;
            $num = intval($num / 10);
        }
        if ($reverse == $i) {
            if ($i % 2 == 0) {
                $even++;
            } else {
                $odd++;
            }
        }
    }
    return [$even, $odd];
}

$n = 12;
$result = even_odd_palindrome($n);
print_r($result);

function candidate(...$args) {
    return even_odd_palindrome(...$args);
}

function test(): void {
    if (candidate(123) !== array(8, 13)) { throw new Exception("Test failed!"); }
    if (candidate(12) !== array(4, 6)) { throw new Exception("Test failed!"); }
    if (candidate(3) !== array(1, 2)) { throw new Exception("Test failed!"); }
    if (candidate(63) !== array(6, 8)) { throw new Exception("Test failed!"); }
    if (candidate(25) !== array(5, 6)) { throw new Exception("Test failed!"); }
    if (candidate(19) !== array(4, 6)) { throw new Exception("Test failed!"); }
    if (candidate(9) !== array(4, 5)) { throw new Exception("Test failed!"); }
    if (candidate(1) !== array(0, 1)) { throw new Exception("Test failed!"); }
}

test();