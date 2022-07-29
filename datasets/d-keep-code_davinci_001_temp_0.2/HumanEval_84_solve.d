import std.typecons;
import std.math;
/*
Given a positive integer N, return the total sum of its digits in binary.
    
    Example
        For N = 1000, the sum of digits will be 1 the output should be "1".
        For N = 150, the sum of digits will be 6 the output should be "110".
        For N = 147, the sum of digits will be 12 the output should be "1100".
    
    Variables:
        @N integer
             Constraints: 0 ≤ N ≤ 10000.
    Output:
         a string of binary number
    
*/
const(char)[] solve(int N) 
{
    // your code here
    return null;
}

unittest
{
    alias candidate = solve;

    assert(candidate(1000) == "1");
    assert(candidate(150) == "110");
    assert(candidate(147) == "1100");
    assert(candidate(333) == "1001");
    assert(candidate(963) == "10010");
}
void main(){}