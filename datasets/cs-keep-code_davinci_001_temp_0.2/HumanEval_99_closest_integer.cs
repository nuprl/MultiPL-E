using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Create a function that takes a value (string) representing a number
    // and returns the closest integer to it. If the number is equidistant
    // from two integers, round it away from zero.
    // Examples
    // >>> closest_integer("10")
    // 10
    // >>> closest_integer("15.3")
    // 15
    // Note:
    // Rounding away from zero means that if the given number is equidistant
    // from two integers, the one you should return is the one that is the
    // farthest from zero. For example closest_integer("14.5") should
    // return 15 and closest_integer("-14.5") should return -15.
    public static int ClosestInteger(string value) {
        double num = double.Parse(value);
        int result = (int)Math.Round(num);
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(ClosestInteger(("10")) == (10));
    Debug.Assert(ClosestInteger(("14.5")) == (15));
    Debug.Assert(ClosestInteger(("-15.5")) == (-16));
    Debug.Assert(ClosestInteger(("15.3")) == (15));
    Debug.Assert(ClosestInteger(("0")) == (0));
    }

}
