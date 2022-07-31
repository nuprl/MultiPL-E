using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return True if all numbers in the list l are below threshold t.
    // >>> below_threshold([1, 2, 4, 10], 100)
    // True
    // >>> below_threshold([1, 20, 4, 10], 5)
    // False
    public static bool BelowThreshold(List<int> l, int t) {
        return l.All(x => x < t);

    }
    public static void Main(string[] args) {
    Debug.Assert(BelowThreshold((new List<int>(new int[]{(int)1, (int)2, (int)4, (int)10})), (100)) == (true));
    Debug.Assert(BelowThreshold((new List<int>(new int[]{(int)1, (int)20, (int)4, (int)10})), (5)) == (false));
    Debug.Assert(BelowThreshold((new List<int>(new int[]{(int)1, (int)20, (int)4, (int)10})), (21)) == (true));
    Debug.Assert(BelowThreshold((new List<int>(new int[]{(int)1, (int)20, (int)4, (int)10})), (22)) == (true));
    Debug.Assert(BelowThreshold((new List<int>(new int[]{(int)1, (int)8, (int)4, (int)10})), (11)) == (true));
    Debug.Assert(BelowThreshold((new List<int>(new int[]{(int)1, (int)8, (int)4, (int)10})), (10)) == (false));
    }

}
