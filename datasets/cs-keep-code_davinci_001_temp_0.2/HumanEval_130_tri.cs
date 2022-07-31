using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
    // the last couple centuries. However, what people don't know is Tribonacci sequence.
    // Tribonacci sequence is defined by the recurrence:
    // tri(1) = 3
    // tri(n) = 1 + n / 2, if n is even.
    // tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
    // For example:
    // tri(2) = 1 + (2 / 2) = 2
    // tri(4) = 3
    // tri(3) = tri(2) + tri(1) + tri(4)
    // = 2 + 3 + 3 = 8 
    // You are given a non-negative integer number n, you have to a return a list of the 
    // first n + 1 numbers of the Tribonacci sequence.
    // Examples:
    // tri(3) = [1, 3, 2, 8]
    public static List<int> Tri(int n) {
        List<int> result = new List<int>();
        result.Add(3);
        for (int i = 1; i <= n; i++) {
            if (i % 2 == 0) {
                result.Add(1);
            } else {
                result.Add(result[i - 1] + result[i - 2] + result[i - 3]);
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Tri((3)).Equals((new List<int>(new int[]{(int)1, (int)3, (int)2, (int)8}))));
    Debug.Assert(Tri((4)).Equals((new List<int>(new int[]{(int)1, (int)3, (int)2, (int)8, (int)3}))));
    Debug.Assert(Tri((5)).Equals((new List<int>(new int[]{(int)1, (int)3, (int)2, (int)8, (int)3, (int)15}))));
    Debug.Assert(Tri((6)).Equals((new List<int>(new int[]{(int)1, (int)3, (int)2, (int)8, (int)3, (int)15, (int)4}))));
    Debug.Assert(Tri((7)).Equals((new List<int>(new int[]{(int)1, (int)3, (int)2, (int)8, (int)3, (int)15, (int)4, (int)24}))));
    Debug.Assert(Tri((8)).Equals((new List<int>(new int[]{(int)1, (int)3, (int)2, (int)8, (int)3, (int)15, (int)4, (int)24, (int)5}))));
    Debug.Assert(Tri((9)).Equals((new List<int>(new int[]{(int)1, (int)3, (int)2, (int)8, (int)3, (int)15, (int)4, (int)24, (int)5, (int)35}))));
    Debug.Assert(Tri((20)).Equals((new List<int>(new int[]{(int)1, (int)3, (int)2, (int)8, (int)3, (int)15, (int)4, (int)24, (int)5, (int)35, (int)6, (int)48, (int)7, (int)63, (int)8, (int)80, (int)9, (int)99, (int)10, (int)120, (int)11}))));
    Debug.Assert(Tri((0)).Equals((new List<int>(new int[]{(int)1}))));
    Debug.Assert(Tri((1)).Equals((new List<int>(new int[]{(int)1, (int)3}))));
    }

}
