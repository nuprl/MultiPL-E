using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return maximum element in the list.
    // >>> max_element([1, 2, 3])
    // 3
    // >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // 123
    public static int MaxElement(List<int> l) {
        int max = l[0];
        for (int i = 1; i < l.Count; i++) {
            if (l[i] > max) {
                max = l[i];
            }
        }
        return max;

    }
    public static void Main(string[] args) {
    Debug.Assert(MaxElement((new List<int>(new int[]{(int)1, (int)2, (int)3}))) == (3));
    Debug.Assert(MaxElement((new List<int>(new int[]{(int)5, (int)3, (int)-5, (int)2, (int)-3, (int)3, (int)9, (int)0, (int)124, (int)1, (int)-10}))) == (124));
    }

}
