using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return sorted unique elements in a list
    // >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [0, 2, 3, 5, 9, 123]
    public static List<int> Unique(List<int> l) {
        return l.Distinct().OrderBy(x => x).ToList();

    }
    public static void Main(string[] args) {
    Debug.Assert(Unique((new List<int>(new int[]{(int)5, (int)3, (int)5, (int)2, (int)3, (int)3, (int)9, (int)0, (int)123}))).Equals((new List<int>(new int[]{(int)0, (int)2, (int)3, (int)5, (int)9, (int)123}))));
    }

}
