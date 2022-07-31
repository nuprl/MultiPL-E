using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a positive integer n, return the count of the numbers of n-digit
    // positive integers that start or end with 1.
    public static int StartsOneEnds(int n) {
        if (n == 1) return 9;
        int count = 9;
        int start = 1;
        int end = 9;
        while (n > 2) {
            count += (start + end) * (end - start + 1);
            start *= 10;
            end *= 10;
            n--;
        }
        return count;

    }
    public static void Main(string[] args) {
    Debug.Assert(StartsOneEnds((1)) == (1));
    Debug.Assert(StartsOneEnds((2)) == (18));
    Debug.Assert(StartsOneEnds((3)) == (180));
    Debug.Assert(StartsOneEnds((4)) == (1800));
    Debug.Assert(StartsOneEnds((5)) == (18000));
    }

}
