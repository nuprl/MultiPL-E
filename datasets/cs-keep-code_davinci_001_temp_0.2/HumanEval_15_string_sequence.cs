using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return a string containing space-delimited numbers starting from 0 upto n inclusive.
    // >>> string_sequence(0)
    // '0'
    // >>> string_sequence(5)
    // '0 1 2 3 4 5'
    public static string StringSequence(int n) {
        return string.Join(" ", Enumerable.Range(0, n).Select(x => x.ToString()));

    }
    public static void Main(string[] args) {
    Debug.Assert(StringSequence((0)).Equals(("0")));
    Debug.Assert(StringSequence((3)).Equals(("0 1 2 3")));
    Debug.Assert(StringSequence((10)).Equals(("0 1 2 3 4 5 6 7 8 9 10")));
    }

}
