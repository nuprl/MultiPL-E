using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return sorted unique common elements for two lists.
    // >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
    // [1, 5, 653]
    // >>> common([5, 3, 2, 8], [3, 2])
    // [2, 3]
    public static List<int> Common(List<int> l1, List<int> l2) {
        var s1 = l1.OrderBy(x => x).ToList();
        var s2 = l2.OrderBy(x => x).ToList();
        var res = new List<int>();
        var i = 0;
        var j = 0;
        while (i < s1.Count && j < s2.Count) {
            if (s1[i] == s2[j]) {
                res.Add(s1[i]);
                i++;
                j++;
            } else if (s1[i] < s2[j]) {
                i++;
            } else {
                j++;
            }
        }
        return res;

    }
    public static void Main(string[] args) {
    Debug.Assert(Common((new List<int>(new int[]{(int)1, (int)4, (int)3, (int)34, (int)653, (int)2, (int)5})), (new List<int>(new int[]{(int)5, (int)7, (int)1, (int)5, (int)9, (int)653, (int)121}))).Equals((new List<int>(new int[]{(int)1, (int)5, (int)653}))));
    Debug.Assert(Common((new List<int>(new int[]{(int)5, (int)3, (int)2, (int)8})), (new List<int>(new int[]{(int)3, (int)2}))).Equals((new List<int>(new int[]{(int)2, (int)3}))));
    Debug.Assert(Common((new List<int>(new int[]{(int)4, (int)3, (int)2, (int)8})), (new List<int>(new int[]{(int)3, (int)2, (int)4}))).Equals((new List<int>(new int[]{(int)2, (int)3, (int)4}))));
    Debug.Assert(Common((new List<int>(new int[]{(int)4, (int)3, (int)2, (int)8})), (new List<int>())).Equals((new List<int>())));
    }

}
