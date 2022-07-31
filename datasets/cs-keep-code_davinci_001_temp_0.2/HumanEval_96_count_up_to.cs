using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Implement a function that takes an non-negative integer and returns an array of the first n
    // integers that are prime numbers and less than n.
    // for example:
    // count_up_to(5) => [2,3]
    // count_up_to(11) => [2,3,5,7]
    // count_up_to(0) => []
    // count_up_to(20) => [2,3,5,7,11,13,17,19]
    // count_up_to(1) => []
    // count_up_to(18) => [2,3,5,7,11,13,17]
    public static List<int> CountUpTo(int n) {
        List<int> result = new List<int>();
        for (int i = 2; i < n; i++) {
            if (IsPrime(i)) {
                result.Add(i);
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(CountUpTo((5)).Equals((new List<int>(new int[]{(int)2, (int)3}))));
    Debug.Assert(CountUpTo((6)).Equals((new List<int>(new int[]{(int)2, (int)3, (int)5}))));
    Debug.Assert(CountUpTo((7)).Equals((new List<int>(new int[]{(int)2, (int)3, (int)5}))));
    Debug.Assert(CountUpTo((10)).Equals((new List<int>(new int[]{(int)2, (int)3, (int)5, (int)7}))));
    Debug.Assert(CountUpTo((0)).Equals((new List<int>())));
    Debug.Assert(CountUpTo((22)).Equals((new List<int>(new int[]{(int)2, (int)3, (int)5, (int)7, (int)11, (int)13, (int)17, (int)19}))));
    Debug.Assert(CountUpTo((1)).Equals((new List<int>())));
    Debug.Assert(CountUpTo((18)).Equals((new List<int>(new int[]{(int)2, (int)3, (int)5, (int)7, (int)11, (int)13, (int)17}))));
    Debug.Assert(CountUpTo((47)).Equals((new List<int>(new int[]{(int)2, (int)3, (int)5, (int)7, (int)11, (int)13, (int)17, (int)19, (int)23, (int)29, (int)31, (int)37, (int)41, (int)43}))));
    Debug.Assert(CountUpTo((101)).Equals((new List<int>(new int[]{(int)2, (int)3, (int)5, (int)7, (int)11, (int)13, (int)17, (int)19, (int)23, (int)29, (int)31, (int)37, (int)41, (int)43, (int)47, (int)53, (int)59, (int)61, (int)67, (int)71, (int)73, (int)79, (int)83, (int)89, (int)97}))));
    }

}
