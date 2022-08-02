# Given a positive integer n, return a tuple that has the number of even and odd
# integer palindromes that fall within the range(1, n), inclusive.
# Example 1:
# Input: 3
# Output: (1, 2)
# Explanation:
# Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
# Example 2:
# Input: 12
# Output: (4, 6)
# Explanation:
# Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
# Note:
# 1. 1 <= n <= 10^3
# 2. returned tuple has the number of even and odd integer palindromes respectively.
sub even_odd_palindrome {
    my($n) = @_;
    my $even = 0;
    my $odd = 0;
    for my $i (1..$n) {
        my $num = $i;
        my $len = length($num);
        my $half = int($len/2);
        my $is_even = $len % 2 == 0;
        my $is_odd = $len % 2 == 1;
        my $is_palindrome = 1;
        for my $j (0..$half) {
            my $left = substr($num, $j, 1);
            my $right = substr($num, $len - $j - 1, 1);
            if ($left ne $right) {
                $is_palindrome = 0;
                last;
            }
        }
        if ($is_palindrome) {
            if ($is_even) {
                $even++;
            } else {
                $odd++;
            }
        }
    }
    return ($even, $odd);
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&even_odd_palindrome;
        if(eq_deeply($candidate->(123),[8, 13])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(12),[4, 6])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(3),[1, 2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(63),[6, 8])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(25),[5, 6])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(19),[4, 6])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(9),[4, 5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1),[0, 1])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();