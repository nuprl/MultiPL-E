using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given two positive integers a and b, return the even digits between a
    // and b, in ascending order.
    // For example:
    // generate_integers(2, 8) => [2, 4, 6, 8]
    // generate_integers(8, 2) => [2, 4, 6, 8]
    // generate_integers(10, 14) => []
    public static List<int> GenerateIntegers(int a, int b) {
        List<int> result = new List<int>();
        if (a < b) {
            for (int i = a; i <= b; i++) {
                if (i % 2 == 0) {
                    result.Add(i);
                }
            }
        } else {
            for (int i = a; i >= b; i--) {
                if (i % 2 == 0) {
                    result.Add(i);
                }
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(GenerateIntegers((2), (10)).Equals((new List<int>(new int[]{(int)2, (int)4, (int)6, (int)8}))));
    Debug.Assert(GenerateIntegers((10), (2)).Equals((new List<int>(new int[]{(int)2, (int)4, (int)6, (int)8}))));
    Debug.Assert(GenerateIntegers((132), (2)).Equals((new List<int>(new int[]{(int)2, (int)4, (int)6, (int)8}))));
    Debug.Assert(GenerateIntegers((17), (89)).Equals((new List<int>())));
    }

}
