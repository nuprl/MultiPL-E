using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a positive integer n, you have to make a pile of n levels of stones.
    // The first level has n stones.
    // The number of stones in the next level is:
    // - the next odd number if n is odd.
    // - the next even number if n is even.
    // Return the number of stones in each level in a list, where element at index
    // i represents the number of stones in the level (i+1).
    // Examples:
    // >>> make_a_pile(3)
    // [3, 5, 7]
    public static List<int> MakeAPile(int n) {
        List<int> result = new List<int>();
        result.Add(n);
        while (n > 1) {
            if (n % 2 == 0) {
                n = n / 2;
            } else {
                n = (n - 1) / 2;
            }
            result.Add(n);
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(MakeAPile((3)).Equals((new List<int>(new int[]{(int)3, (int)5, (int)7}))));
    Debug.Assert(MakeAPile((4)).Equals((new List<int>(new int[]{(int)4, (int)6, (int)8, (int)10}))));
    Debug.Assert(MakeAPile((5)).Equals((new List<int>(new int[]{(int)5, (int)7, (int)9, (int)11, (int)13}))));
    Debug.Assert(MakeAPile((6)).Equals((new List<int>(new int[]{(int)6, (int)8, (int)10, (int)12, (int)14, (int)16}))));
    Debug.Assert(MakeAPile((8)).Equals((new List<int>(new int[]{(int)8, (int)10, (int)12, (int)14, (int)16, (int)18, (int)20, (int)22}))));
    }

}
