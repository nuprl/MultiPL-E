using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // sum_to_n is a function that sums numbers from 1 to n.
    // >>> sum_to_n(30)
    // 465
    // >>> sum_to_n(100)
    // 5050
    // >>> sum_to_n(5)
    // 15
    // >>> sum_to_n(10)
    // 55
    // >>> sum_to_n(1)
    // 1
    public static int SumToN(int n) {
        int sum = 0;
        for (int i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;

    }
    public static void Main(string[] args) {
    Debug.Assert(SumToN((1)) == (1));
    Debug.Assert(SumToN((6)) == (21));
    Debug.Assert(SumToN((11)) == (66));
    Debug.Assert(SumToN((30)) == (465));
    Debug.Assert(SumToN((100)) == (5050));
    }

}
