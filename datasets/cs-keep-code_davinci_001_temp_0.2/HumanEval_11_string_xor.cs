using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Input are two strings a and b consisting only of 1s and 0s.
    // Perform binary XOR on these inputs and return result also as a string.
    // >>> string_xor('010', '110')
    // '100'
    public static string StringXor(string a, string b) {
        if (a.Length != b.Length) {
            throw new Exception("Lengths of strings are not equal");
        }
        var result = new StringBuilder();
        for (int i = 0; i < a.Length; i++) {
            result.Append((a[i] == b[i]) ? '0' : '1');
        }
        return result.ToString();

    }
    public static void Main(string[] args) {
    Debug.Assert(StringXor(("111000"), ("101010")).Equals(("010010")));
    Debug.Assert(StringXor(("1"), ("1")).Equals(("0")));
    Debug.Assert(StringXor(("0101"), ("0000")).Equals(("0101")));
    }

}
