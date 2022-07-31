using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Task
    // Write a function that takes a string as input and returns the sum of the upper characters only'
    // ASCII codes.
    // Examples:
    // digitSum("") => 0
    // digitSum("abAB") => 131
    // digitSum("abcCd") => 67
    // digitSum("helloE") => 69
    // digitSum("woArBld") => 131
    // digitSum("aAaaaXa") => 153
    public static int Digitsum(string s) {
        int sum = 0;
        foreach (char c in s) {
            if (char.IsUpper(c)) {
                sum += c;
            }
        }
        return sum;

    }
    public static void Main(string[] args) {
    Debug.Assert(Digitsum(("")) == (0));
    Debug.Assert(Digitsum(("abAB")) == (131));
    Debug.Assert(Digitsum(("abcCd")) == (67));
    Debug.Assert(Digitsum(("helloE")) == (69));
    Debug.Assert(Digitsum(("woArBld")) == (131));
    Debug.Assert(Digitsum(("aAaaaXa")) == (153));
    Debug.Assert(Digitsum((" How are yOu?")) == (151));
    Debug.Assert(Digitsum(("You arE Very Smart")) == (327));
    }

}
