using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that returns true if the given number is the multiplication of 3 prime numbers
    // and false otherwise.
    // Knowing that (a) is less then 100. 
    // Example:
    // is_multiply_prime(30) == True
    // 30 = 2 * 3 * 5
    public static bool IsMultiplyPrime(int a) {
        // your code here
        return false;

    }
    public static void Main(string[] args) {
    Debug.Assert(IsMultiplyPrime((5)) == (false));
    Debug.Assert(IsMultiplyPrime((30)) == (true));
    Debug.Assert(IsMultiplyPrime((8)) == (true));
    Debug.Assert(IsMultiplyPrime((10)) == (false));
    Debug.Assert(IsMultiplyPrime((125)) == (true));
    Debug.Assert(IsMultiplyPrime((105)) == (true));
    Debug.Assert(IsMultiplyPrime((126)) == (false));
    Debug.Assert(IsMultiplyPrime((729)) == (false));
    Debug.Assert(IsMultiplyPrime((891)) == (false));
    Debug.Assert(IsMultiplyPrime((1001)) == (true));
    }

}
