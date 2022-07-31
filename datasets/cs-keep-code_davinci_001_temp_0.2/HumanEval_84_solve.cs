using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a positive integer N, return the total sum of its digits in binary.
    // Example
    // For N = 1000, the sum of digits will be 1 the output should be "1".
    // For N = 150, the sum of digits will be 6 the output should be "110".
    // For N = 147, the sum of digits will be 12 the output should be "1100".
    // Variables:
    // @N integer
    // Constraints: 0 ≤ N ≤ 10000.
    // Output:
    // a string of binary number
    public static string Solve(int N) {
        string binary = Convert.ToString(N, 2);
        int sum = 0;
        foreach (char c in binary)
        {
            sum += (int)Char.GetNumericValue(c);
        }
        return sum.ToString();

    }
    public static void Main(string[] args) {
    Debug.Assert(Solve((1000)).Equals(("1")));
    Debug.Assert(Solve((150)).Equals(("110")));
    Debug.Assert(Solve((147)).Equals(("1100")));
    Debug.Assert(Solve((333)).Equals(("1001")));
    Debug.Assert(Solve((963)).Equals(("10010")));
    }

}
