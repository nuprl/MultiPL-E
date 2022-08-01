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
string solve(long N) 
{
    string result = "";
    while (N > 0)
    {
        result = std.math.toBinary(N % 2) + result;
        N = N / 2;
    }
    return result;
}

unittest
{
    alias candidate = solve;

    assert(candidate(1000L) == "1");
    assert(candidate(150L) == "110");
    assert(candidate(147L) == "1100");
    assert(candidate(333L) == "1001");
    assert(candidate(963L) == "10010");
}
void main(){}