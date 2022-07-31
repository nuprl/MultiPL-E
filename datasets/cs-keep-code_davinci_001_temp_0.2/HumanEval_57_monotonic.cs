using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return True is list elements are monotonically increasing or decreasing.
    // >>> monotonic([1, 2, 4, 20])
    // True
    // >>> monotonic([1, 20, 4, 10])
    // False
    // >>> monotonic([4, 1, 0, -10])
    // True
    public static bool Monotonic(List<int> l) {
        bool increasing = true;
        bool decreasing = true;
        for (int i = 1; i < l.Count; i++) {
            if (l[i] > l[i - 1]) {
                decreasing = false;
            }
            if (l[i] < l[i - 1]) {
                increasing = false;
            }
        }
        return increasing || decreasing;

    }
    public static void Main(string[] args) {
    Debug.Assert(Monotonic((new List<int>(new int[]{(int)1, (int)2, (int)4, (int)10}))) == (true));
    Debug.Assert(Monotonic((new List<int>(new int[]{(int)1, (int)2, (int)4, (int)20}))) == (true));
    Debug.Assert(Monotonic((new List<int>(new int[]{(int)1, (int)20, (int)4, (int)10}))) == (false));
    Debug.Assert(Monotonic((new List<int>(new int[]{(int)4, (int)1, (int)0, (int)-10}))) == (true));
    Debug.Assert(Monotonic((new List<int>(new int[]{(int)4, (int)1, (int)1, (int)0}))) == (true));
    Debug.Assert(Monotonic((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)2, (int)5, (int)60}))) == (false));
    Debug.Assert(Monotonic((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)60}))) == (true));
    Debug.Assert(Monotonic((new List<int>(new int[]{(int)9, (int)9, (int)9, (int)9}))) == (true));
    }

}
