using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return list with elements incremented by 1.
    // >>> incr_list([1, 2, 3])
    // [2, 3, 4]
    // >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [6, 4, 6, 3, 4, 4, 10, 1, 124]
    public static List<int> IncrList(List<int> l) {
        return l.Select(x => x + 1).ToList();

    }
    public static void Main(string[] args) {
    Debug.Assert(IncrList((new List<int>())).Equals((new List<int>())));
    Debug.Assert(IncrList((new List<int>(new int[]{(int)3, (int)2, (int)1}))).Equals((new List<int>(new int[]{(int)4, (int)3, (int)2}))));
    Debug.Assert(IncrList((new List<int>(new int[]{(int)5, (int)2, (int)5, (int)2, (int)3, (int)3, (int)9, (int)0, (int)123}))).Equals((new List<int>(new int[]{(int)6, (int)3, (int)6, (int)3, (int)4, (int)4, (int)10, (int)1, (int)124}))));
    }

}
