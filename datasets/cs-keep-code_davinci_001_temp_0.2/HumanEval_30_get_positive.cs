using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return only positive numbers in the list.
    // >>> get_positive([-1, 2, -4, 5, 6])
    // [2, 5, 6]
    // >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // [5, 3, 2, 3, 9, 123, 1]
    public static List<int> GetPositive(List<int> l) {
        List<int> result = new List<int>();
        foreach (int i in l) {
            if (i > 0) {
                result.Add(i);
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(GetPositive((new List<int>(new int[]{(int)-1, (int)-2, (int)4, (int)5, (int)6}))).Equals((new List<int>(new int[]{(int)4, (int)5, (int)6}))));
    Debug.Assert(GetPositive((new List<int>(new int[]{(int)5, (int)3, (int)-5, (int)2, (int)3, (int)3, (int)9, (int)0, (int)123, (int)1, (int)-10}))).Equals((new List<int>(new int[]{(int)5, (int)3, (int)2, (int)3, (int)3, (int)9, (int)123, (int)1}))));
    Debug.Assert(GetPositive((new List<int>(new int[]{(int)-1, (int)-2}))).Equals((new List<int>())));
    Debug.Assert(GetPositive((new List<int>())).Equals((new List<int>())));
    }

}
