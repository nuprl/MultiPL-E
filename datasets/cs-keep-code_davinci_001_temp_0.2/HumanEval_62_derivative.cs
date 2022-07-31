using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // xs represent coefficients of a polynomial.
    // xs[0] + xs[1] * x + xs[2] * x^2 + ....
    // Return derivative of this polynomial in the same form.
    // >>> derivative([3, 1, 2, 4, 5])
    // [1, 4, 12, 20]
    // >>> derivative([1, 2, 3])
    // [2, 6]
    public static List<int> Derivative(List<int> xs) {
        List<int> result = new List<int>();
        for (int i = 1; i < xs.Count; i++) {
            result.Add(i * xs[i]);
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Derivative((new List<int>(new int[]{(int)3, (int)1, (int)2, (int)4, (int)5}))).Equals((new List<int>(new int[]{(int)1, (int)4, (int)12, (int)20}))));
    Debug.Assert(Derivative((new List<int>(new int[]{(int)1, (int)2, (int)3}))).Equals((new List<int>(new int[]{(int)2, (int)6}))));
    Debug.Assert(Derivative((new List<int>(new int[]{(int)3, (int)2, (int)1}))).Equals((new List<int>(new int[]{(int)2, (int)2}))));
    Debug.Assert(Derivative((new List<int>(new int[]{(int)3, (int)2, (int)1, (int)0, (int)4}))).Equals((new List<int>(new int[]{(int)2, (int)2, (int)0, (int)16}))));
    Debug.Assert(Derivative((new List<int>(new int[]{(int)1}))).Equals((new List<int>())));
    }

}
