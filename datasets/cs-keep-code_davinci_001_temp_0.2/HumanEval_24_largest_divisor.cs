using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // For a given number n, find the largest number that divides n evenly, smaller than n
    // >>> largest_divisor(15)
    // 5
    public static int LargestDivisor(int n) {
        int divisor = n - 1;
        while (divisor > 0) {
            if (n % divisor == 0) {
                return divisor;
            }
            divisor--;
        }
        return divisor;

    }
    public static void Main(string[] args) {
    Debug.Assert(LargestDivisor((3)) == (1));
    Debug.Assert(LargestDivisor((7)) == (1));
    Debug.Assert(LargestDivisor((10)) == (5));
    Debug.Assert(LargestDivisor((100)) == (50));
    Debug.Assert(LargestDivisor((49)) == (7));
    }

}
