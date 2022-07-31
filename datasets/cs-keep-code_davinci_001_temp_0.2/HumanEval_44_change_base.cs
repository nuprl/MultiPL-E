using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Change numerical base of input number x to base.
    // return string representation after the conversion.
    // base numbers are less than 10.
    // >>> change_base(8, 3)
    // '22'
    // >>> change_base(8, 2)
    // '1000'
    // >>> change_base(7, 2)
    // '111'
    public static string ChangeBase(int x, int numBase) {
        string result = "";
        while (x > 0) {
            result = (x % numBase).ToString() + result;
            x /= numBase;
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(ChangeBase((8), (3)).Equals(("22")));
    Debug.Assert(ChangeBase((9), (3)).Equals(("100")));
    Debug.Assert(ChangeBase((234), (2)).Equals(("11101010")));
    Debug.Assert(ChangeBase((16), (2)).Equals(("10000")));
    Debug.Assert(ChangeBase((8), (2)).Equals(("1000")));
    Debug.Assert(ChangeBase((7), (2)).Equals(("111")));
    Debug.Assert(ChangeBase((2), (3)).Equals(("2")));
    Debug.Assert(ChangeBase((3), (4)).Equals(("3")));
    Debug.Assert(ChangeBase((4), (5)).Equals(("4")));
    Debug.Assert(ChangeBase((5), (6)).Equals(("5")));
    Debug.Assert(ChangeBase((6), (7)).Equals(("6")));
    Debug.Assert(ChangeBase((7), (8)).Equals(("7")));
    }

}
