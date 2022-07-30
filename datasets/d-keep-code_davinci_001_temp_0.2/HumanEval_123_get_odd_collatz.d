import std.math;
import std.typecons;
/*

    Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.

    The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
    as follows: start with any positive integer n. Then each term is obtained from the 
    previous term as follows: if the previous term is even, the next term is one half of 
    the previous term. If the previous term is odd, the next term is 3 times the previous
    term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.

    Note: 
        1. Collatz(1) is [1].
        2. returned list sorted in increasing order.

    For example:
    get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
    
*/
long[] get_odd_collatz(long n) 
{
    if (n == 1)
        return [1];
    if (n % 2 == 0)
        return [1] + get_odd_collatz(n / 2);
    else
        return [1] + get_odd_collatz(n * 3 + 1);
}

unittest
{
    alias candidate = get_odd_collatz;

    assert(candidate(14) == [1, 5, 7, 11, 13, 17]);
    assert(candidate(5) == [1, 5]);
    assert(candidate(12) == [1, 3, 5]);
    assert(candidate(1) == [1]);
}
void main(){}