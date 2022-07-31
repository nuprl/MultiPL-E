using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
    // cycpattern_check("abcd","abd") => False
    // cycpattern_check("hello","ell") => True
    // cycpattern_check("whassup","psus") => False
    // cycpattern_check("abab","baa") => True
    // cycpattern_check("efef","eeff") => False
    // cycpattern_check("himenss","simen") => True
    public static bool CycpatternCheck(string a, string b) {
        if (a.Length < b.Length) return false;
        for (int i = 0; i < a.Length; i++) {
            if (a.Substring(i, b.Length) == b) return true;
        }
        return false;

    }
    public static void Main(string[] args) {
    Debug.Assert(CycpatternCheck(("xyzw"), ("xyw")) == (false));
    Debug.Assert(CycpatternCheck(("yello"), ("ell")) == (true));
    Debug.Assert(CycpatternCheck(("whattup"), ("ptut")) == (false));
    Debug.Assert(CycpatternCheck(("efef"), ("fee")) == (true));
    Debug.Assert(CycpatternCheck(("abab"), ("aabb")) == (false));
    Debug.Assert(CycpatternCheck(("winemtt"), ("tinem")) == (true));
    }

}
