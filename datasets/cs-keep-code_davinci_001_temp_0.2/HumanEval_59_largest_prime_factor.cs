using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return the largest prime factor of n. Assume n > 1 and is not a prime.
    // >>> largest_prime_factor(13195)
    // 29
    // >>> largest_prime_factor(2048)
    // 2
    public static int LargestPrimeFactor(int n) {
        int i = 2;
        while (i * i <= n) {
            if (n % i == 0) {
                n /= i;
            } else {
                i++;
            }
        }
        return n;

    }
    public static void Main(string[] args) {
    Debug.Assert(LargestPrimeFactor((15)) == (5));
    Debug.Assert(LargestPrimeFactor((27)) == (3));
    Debug.Assert(LargestPrimeFactor((63)) == (7));
    Debug.Assert(LargestPrimeFactor((330)) == (11));
    Debug.Assert(LargestPrimeFactor((13195)) == (29));
    }

}
