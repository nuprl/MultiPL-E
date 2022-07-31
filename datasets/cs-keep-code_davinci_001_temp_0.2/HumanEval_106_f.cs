using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Implement the function f that takes n as a parameter,
    // and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
    // or the sum of numbers from 1 to i otherwise.
    // i starts from 1.
    // the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
    // Example:
    // f(5) == [1, 2, 6, 24, 15]
    public static List<int> F(int n) {
        List<int> result = new List<int>();
        for (int i = 1; i <= n; i++) {
            if (i % 2 == 0) {
                result.Add(Factorial(i));
            } else {
                result.Add(Sum(i));
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(F((5)).Equals((new List<int>(new int[]{(int)1, (int)2, (int)6, (int)24, (int)15}))));
    Debug.Assert(F((7)).Equals((new List<int>(new int[]{(int)1, (int)2, (int)6, (int)24, (int)15, (int)720, (int)28}))));
    Debug.Assert(F((1)).Equals((new List<int>(new int[]{(int)1}))));
    Debug.Assert(F((3)).Equals((new List<int>(new int[]{(int)1, (int)2, (int)6}))));
    }

}
