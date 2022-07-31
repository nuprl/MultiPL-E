using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that takes an integer a and returns True 
    // if this ingeger is a cube of some integer number.
    // Note: you may assume the input is always valid.
    // Examples:
    // iscube(1) ==> True
    // iscube(2) ==> False
    // iscube(-1) ==> True
    // iscube(64) ==> True
    // iscube(0) ==> True
    // iscube(180) ==> False
    public static bool Iscube(int a) {
        if (a == 0) return true;
        if (a < 0) return false;
        double x = Math.Cbrt(a);
        return x == Math.Floor(x);

    }
    public static void Main(string[] args) {
    Debug.Assert(Iscube((1)) == (true));
    Debug.Assert(Iscube((2)) == (false));
    Debug.Assert(Iscube((-1)) == (true));
    Debug.Assert(Iscube((64)) == (true));
    Debug.Assert(Iscube((180)) == (false));
    Debug.Assert(Iscube((1000)) == (true));
    Debug.Assert(Iscube((0)) == (true));
    Debug.Assert(Iscube((1729)) == (false));
    }

}
