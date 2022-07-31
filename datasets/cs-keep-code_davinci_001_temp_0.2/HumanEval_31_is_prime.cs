using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return true if a given number is prime, and false otherwise.
    // >>> is_prime(6)
    // False
    // >>> is_prime(101)
    // True
    // >>> is_prime(11)
    // True
    // >>> is_prime(13441)
    // True
    // >>> is_prime(61)
    // True
    // >>> is_prime(4)
    // False
    // >>> is_prime(1)
    // False
    public static bool IsPrime(int n) {
        if (n <= 1) {
            return false;
        }
        if (n == 2) {
            return true;
        }
        if (n % 2 == 0) {
            return false;
        }
        for (int i = 3; i * i <= n; i += 2) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;

    }
    public static void Main(string[] args) {
    Debug.Assert(IsPrime((6)) == (false));
    Debug.Assert(IsPrime((101)) == (true));
    Debug.Assert(IsPrime((11)) == (true));
    Debug.Assert(IsPrime((13441)) == (true));
    Debug.Assert(IsPrime((61)) == (true));
    Debug.Assert(IsPrime((4)) == (false));
    Debug.Assert(IsPrime((1)) == (false));
    Debug.Assert(IsPrime((5)) == (true));
    Debug.Assert(IsPrime((11)) == (true));
    Debug.Assert(IsPrime((17)) == (true));
    Debug.Assert(IsPrime((85)) == (false));
    Debug.Assert(IsPrime((77)) == (false));
    Debug.Assert(IsPrime((255379)) == (false));
    }

}
