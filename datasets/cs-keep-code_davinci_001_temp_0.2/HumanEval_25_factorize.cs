using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return list of prime factors of given integer in the order from smallest to largest.
    // Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
    // Input number should be equal to the product of all factors
    // >>> factorize(8)
    // [2, 2, 2]
    // >>> factorize(25)
    // [5, 5]
    // >>> factorize(70)
    // [2, 5, 7]
    public static List<int> Factorize(int n) {
        List<int> result = new List<int>();
        for (int i = 2; i <= n; i++) {
            while (n % i == 0) {
                result.Add(i);
                n /= i;
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Factorize((2)).Equals((new List<int>(new int[]{(int)2}))));
    Debug.Assert(Factorize((4)).Equals((new List<int>(new int[]{(int)2, (int)2}))));
    Debug.Assert(Factorize((8)).Equals((new List<int>(new int[]{(int)2, (int)2, (int)2}))));
    Debug.Assert(Factorize((57)).Equals((new List<int>(new int[]{(int)3, (int)19}))));
    Debug.Assert(Factorize((3249)).Equals((new List<int>(new int[]{(int)3, (int)3, (int)19, (int)19}))));
    Debug.Assert(Factorize((185193)).Equals((new List<int>(new int[]{(int)3, (int)3, (int)3, (int)19, (int)19, (int)19}))));
    Debug.Assert(Factorize((20577)).Equals((new List<int>(new int[]{(int)3, (int)19, (int)19, (int)19}))));
    Debug.Assert(Factorize((18)).Equals((new List<int>(new int[]{(int)2, (int)3, (int)3}))));
    }

}
