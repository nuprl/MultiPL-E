using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
    // to the values of the corresponding indicies of l, but sorted.
    // >>> sort_third([1, 2, 3])
    // [1, 2, 3]
    // >>> sort_third([5, 6, 3, 4, 8, 9, 2])
    // [2, 6, 3, 4, 8, 9, 5]
    public static List<int> SortThird(List<int> l) {
        List<int> l2 = new List<int>();
        for (int i = 0; i < l.Count; i++) {
            if (i % 3 == 0) {
                l2.Add(l[i]);
            }
            else {
                l2.Add(l[i]);
            }
        }
        l2.Sort();
        return l2;

    }
    public static void Main(string[] args) {
    Debug.Assert(SortThird((new List<int>(new int[]{(int)5, (int)6, (int)3, (int)4, (int)8, (int)9, (int)2}))).Equals((new List<int>(new int[]{(int)2, (int)6, (int)3, (int)4, (int)8, (int)9, (int)5}))));
    Debug.Assert(SortThird((new List<int>(new int[]{(int)5, (int)8, (int)3, (int)4, (int)6, (int)9, (int)2}))).Equals((new List<int>(new int[]{(int)2, (int)8, (int)3, (int)4, (int)6, (int)9, (int)5}))));
    Debug.Assert(SortThird((new List<int>(new int[]{(int)5, (int)6, (int)9, (int)4, (int)8, (int)3, (int)2}))).Equals((new List<int>(new int[]{(int)2, (int)6, (int)9, (int)4, (int)8, (int)3, (int)5}))));
    Debug.Assert(SortThird((new List<int>(new int[]{(int)5, (int)6, (int)3, (int)4, (int)8, (int)9, (int)2, (int)1}))).Equals((new List<int>(new int[]{(int)2, (int)6, (int)3, (int)4, (int)8, (int)9, (int)5, (int)1}))));
    }

}
