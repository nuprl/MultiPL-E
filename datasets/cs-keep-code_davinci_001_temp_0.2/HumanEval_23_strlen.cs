using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return length of given string
    // >>> strlen('')
    // 0
    // >>> strlen('abc')
    // 3
    public static int Strlen(string str) {
        int len = 0;
        for (int i = 0; i < str.Length; i++) {
            len++;
        }
        return len;

    }
    public static void Main(string[] args) {
    Debug.Assert(Strlen(("")) == (0));
    Debug.Assert(Strlen(("x")) == (1));
    Debug.Assert(Strlen(("asdasnakj")) == (9));
    }

}
