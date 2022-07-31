using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
    // Example
    // is_equal_to_sum_even(4) == False
    // is_equal_to_sum_even(6) == False
    // is_equal_to_sum_even(8) == True
    public static bool IsEqualToSumEven(int n) {
        if (n < 4) return false;
        if (n % 2 != 0) return false;
        int sum = 0;
        for (int i = 2; i <= n; i += 2) {
            sum += i;
        }
        return sum == n;

    }
    public static void Main(string[] args) {
    Debug.Assert(IsEqualToSumEven((4)) == (false));
    Debug.Assert(IsEqualToSumEven((6)) == (false));
    Debug.Assert(IsEqualToSumEven((8)) == (true));
    Debug.Assert(IsEqualToSumEven((10)) == (true));
    Debug.Assert(IsEqualToSumEven((11)) == (false));
    Debug.Assert(IsEqualToSumEven((12)) == (true));
    Debug.Assert(IsEqualToSumEven((13)) == (false));
    Debug.Assert(IsEqualToSumEven((16)) == (true));
    }

}
