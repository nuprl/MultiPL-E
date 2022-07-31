using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return median of elements in the list l.
    // >>> median([3, 1, 2, 4, 5])
    // 3
    // >>> median([-10, 4, 6, 1000, 10, 20])
    // 15.0
    public static float Median(List<int> l) {
        l.Sort();
        int n = l.Count;
        if (n % 2 == 1) {
            return l[n / 2];
        } else {
            return (l[n / 2] + l[n / 2 - 1]) / 2.0f;
        }

    }
    public static void Main(string[] args) {
    Debug.Assert(Median((new List<int>(new int[]{(int)3, (int)1, (int)2, (int)4, (int)5}))) == (float)3);
    Debug.Assert(Median((new List<int>(new int[]{(int)-10, (int)4, (int)6, (int)1000, (int)10, (int)20}))) == (8.0f));
    Debug.Assert(Median((new List<int>(new int[]{(int)5}))) == (float)5);
    Debug.Assert(Median((new List<int>(new int[]{(int)6, (int)5}))) == (5.5f));
    Debug.Assert(Median((new List<int>(new int[]{(int)8, (int)1, (int)3, (int)9, (int)9, (int)2, (int)7}))) == (float)7);
    }

}
