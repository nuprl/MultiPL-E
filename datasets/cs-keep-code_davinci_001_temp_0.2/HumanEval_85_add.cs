using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a non-empty list of integers lst. add the even elements that are at odd indices..
    // Examples:
    // add([4, 2, 6, 7]) ==> 2
    public static int Add(List<int> lst) {
        int sum = 0;
        for (int i = 0; i < lst.Count; i++) {
            if (i % 2 == 1 && lst[i] % 2 == 0) {
                sum += lst[i];
            }
        }
        return sum;

    }
    public static void Main(string[] args) {
    Debug.Assert(Add((new List<int>(new int[]{(int)4, (int)88}))) == (88));
    Debug.Assert(Add((new List<int>(new int[]{(int)4, (int)5, (int)6, (int)7, (int)2, (int)122}))) == (122));
    Debug.Assert(Add((new List<int>(new int[]{(int)4, (int)0, (int)6, (int)7}))) == (0));
    Debug.Assert(Add((new List<int>(new int[]{(int)4, (int)4, (int)6, (int)8}))) == (12));
    }

}
