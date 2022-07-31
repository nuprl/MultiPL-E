using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the odd indicies, while its values at the even indicies are equal
    // to the values of the even indicies of l, but sorted.
    // >>> sort_even([1, 2, 3])
    // [1, 2, 3]
    // >>> sort_even([5, 6, 3, 4])
    // [3, 6, 5, 4]
    public static List<int> SortEven(List<int> l) {
        List<int> l2 = new List<int>();
        for (int i = 0; i < l.Count; i++) {
            if (i % 2 == 0) {
                l2.Add(l[i]);
            } else {
                l2.Add(l[i]);
                l2.Sort();
            }
        }
        return l2;

    }
    public static void Main(string[] args) {
    Debug.Assert(SortEven((new List<int>(new int[]{(int)1, (int)2, (int)3}))).Equals((new List<int>(new int[]{(int)1, (int)2, (int)3}))));
    Debug.Assert(SortEven((new List<int>(new int[]{(int)5, (int)3, (int)-5, (int)2, (int)-3, (int)3, (int)9, (int)0, (int)123, (int)1, (int)-10}))).Equals((new List<int>(new int[]{(int)-10, (int)3, (int)-5, (int)2, (int)-3, (int)3, (int)5, (int)0, (int)9, (int)1, (int)123}))));
    Debug.Assert(SortEven((new List<int>(new int[]{(int)5, (int)8, (int)-12, (int)4, (int)23, (int)2, (int)3, (int)11, (int)12, (int)-10}))).Equals((new List<int>(new int[]{(int)-12, (int)8, (int)3, (int)4, (int)5, (int)2, (int)12, (int)11, (int)23, (int)-10}))));
    }

}
