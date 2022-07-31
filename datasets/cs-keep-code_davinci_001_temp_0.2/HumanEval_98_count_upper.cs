using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a string s, count the number of uppercase vowels in even indices.
    // For example:
    // count_upper('aBCdEf') returns 1
    // count_upper('abcdefg') returns 0
    // count_upper('dBBE') returns 0
    public static int CountUpper(string s) {
        int count = 0;
        for (int i = 0; i < s.Length; i += 2) {
            if (s[i] == 'A' || s[i] == 'E' || s[i] == 'I' || s[i] == 'O' || s[i] == 'U') {
                count++;
            }
        }
        return count;

    }
    public static void Main(string[] args) {
    Debug.Assert(CountUpper(("aBCdEf")) == (1));
    Debug.Assert(CountUpper(("abcdefg")) == (0));
    Debug.Assert(CountUpper(("dBBE")) == (0));
    Debug.Assert(CountUpper(("B")) == (0));
    Debug.Assert(CountUpper(("U")) == (1));
    Debug.Assert(CountUpper(("")) == (0));
    Debug.Assert(CountUpper(("EEEE")) == (2));
    }

}
