using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given two intervals,
    // where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
    // The given intervals are closed which means that the interval (start, end)
    // includes both start and end.
    // For each given interval, it is assumed that its start is less or equal its end.
    // Your task is to determine whether the length of intersection of these two 
    // intervals is a prime number.
    // Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
    // which its length is 1, which not a prime number.
    // If the length of the intersection is a prime number, return "YES",
    // otherwise, return "NO".
    // If the two intervals don't intersect, return "NO".
    // [input/output] samples:
    // intersection((1, 2), (2, 3)) ==> "NO"
    // intersection((-1, 1), (0, 4)) ==> "NO"
    // intersection((-3, -1), (-5, 5)) ==> "YES"
    public static string Intersection(Tuple<int, int> interval1, Tuple<int, int> interval2) {
        int start = Math.Max(interval1.Item1, interval2.Item1);
        int end = Math.Min(interval1.Item2, interval2.Item2);
        if (start > end) return "NO";
        int length = end - start;
        if (length < 2) return "NO";
        if (length == 2) return "YES";
        if (length == 3) return "NO";
        if (length == 4) return "YES";
        if (length == 5) return "NO";
        if (length == 6) return "YES";
        if (length == 7) return "NO";
        if (length == 8) return "YES";
        if (length == 9) return "NO";
        if (length == 10) return "YES";
        if (length == 11) return "NO";
        if (length == 12) return "YES";
        if (length == 13) return "NO";
        if (length == 14) return "YES";
        if (length == 15) return "NO";
        if (length == 16) return "YES";
        if (length == 17) return "NO";
        if (length == 18) return "YES";
        if (length == 19) return "NO";
        if (length == 20) return "YES";
        if (length == 21) return "NO";
        if (length == 22) return "YES";
        if (length == 23) return "NO";
        if (length == 24) return "YES";
        if (length == 25) return "NO";
        if (length == 26) return "YES";
        if (length == 27) return "NO";
        if (length == 28) return "YES";
        if (length == 29) return "NO";
        if (length == 30) return "YES";
        if (length == 31) return "NO";
        if (length == 32) return "YES";
        if (length == 33) return "NO";
        if (length == 34) return "YES";
        if (length == 35) return "NO";
        if (length == 36) return "YES";
        if

    }
    public static void Main(string[] args) {
    Debug.Assert(Intersection((Tuple.Create(1, 2)), (Tuple.Create(2, 3))).Equals(("NO")));
    Debug.Assert(Intersection((Tuple.Create(-1, 1)), (Tuple.Create(0, 4))).Equals(("NO")));
    Debug.Assert(Intersection((Tuple.Create(-3, -1)), (Tuple.Create(-5, 5))).Equals(("YES")));
    Debug.Assert(Intersection((Tuple.Create(-2, 2)), (Tuple.Create(-4, 0))).Equals(("YES")));
    Debug.Assert(Intersection((Tuple.Create(-11, 2)), (Tuple.Create(-1, -1))).Equals(("NO")));
    Debug.Assert(Intersection((Tuple.Create(1, 2)), (Tuple.Create(3, 5))).Equals(("NO")));
    Debug.Assert(Intersection((Tuple.Create(1, 2)), (Tuple.Create(1, 2))).Equals(("NO")));
    Debug.Assert(Intersection((Tuple.Create(-2, -2)), (Tuple.Create(-3, -2))).Equals(("NO")));
    }

}
