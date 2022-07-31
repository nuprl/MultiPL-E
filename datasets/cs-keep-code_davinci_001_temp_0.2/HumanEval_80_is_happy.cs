using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given a string s.
    // Your task is to check if the string is happy or not.
    // A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
    // For example:
    // is_happy(a) => False
    // is_happy(aa) => False
    // is_happy(abcd) => True
    // is_happy(aabb) => False
    // is_happy(adb) => True
    // is_happy(xyy) => False
    public static bool IsHappy(string s) {
        if (s.Length < 3) return false;
        int i = 0;
        while (i < s.Length - 2) {
            if (s[i] == s[i + 1] && s[i] == s[i + 2]) return false;
            i++;
        }
        return true;

    }
    public static void Main(string[] args) {
    Debug.Assert(IsHappy(("a")) == (false));
    Debug.Assert(IsHappy(("aa")) == (false));
    Debug.Assert(IsHappy(("abcd")) == (true));
    Debug.Assert(IsHappy(("aabb")) == (false));
    Debug.Assert(IsHappy(("adb")) == (true));
    Debug.Assert(IsHappy(("xyy")) == (false));
    Debug.Assert(IsHappy(("iopaxpoi")) == (true));
    Debug.Assert(IsHappy(("iopaxioi")) == (false));
    }

}
