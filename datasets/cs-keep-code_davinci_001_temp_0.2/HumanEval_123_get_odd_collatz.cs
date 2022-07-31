using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
    // The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
    // as follows: start with any positive integer n. Then each term is obtained from the 
    // previous term as follows: if the previous term is even, the next term is one half of 
    // the previous term. If the previous term is odd, the next term is 3 times the previous
    // term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
    // Note: 
    // 1. Collatz(1) is [1].
    // 2. returned list sorted in increasing order.
    // For example:
    // get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
    public static List<int> GetOddCollatz(int n) {
        List<int> result = new List<int>();
        while (n != 1) {
            if (n % 2 == 0) {
                n /= 2;
            } else {
                n = 3 * n + 1;
            }
            result.Add(n);
        }
        result.Add(1);
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(GetOddCollatz((14)).Equals((new List<int>(new int[]{(int)1, (int)5, (int)7, (int)11, (int)13, (int)17}))));
    Debug.Assert(GetOddCollatz((5)).Equals((new List<int>(new int[]{(int)1, (int)5}))));
    Debug.Assert(GetOddCollatz((12)).Equals((new List<int>(new int[]{(int)1, (int)3, (int)5}))));
    Debug.Assert(GetOddCollatz((1)).Equals((new List<int>(new int[]{(int)1}))));
    }

}
