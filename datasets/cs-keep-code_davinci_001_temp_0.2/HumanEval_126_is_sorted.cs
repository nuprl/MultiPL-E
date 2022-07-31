using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a list of numbers, return whether or not they are sorted
    // in ascending order. If list has more than 1 duplicate of the same
    // number, return False. Assume no negative numbers and only integers.
    // Examples
    // is_sorted([5]) ➞ True
    // is_sorted([1, 2, 3, 4, 5]) ➞ True
    // is_sorted([1, 3, 2, 4, 5]) ➞ False
    // is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
    // is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
    // is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
    // is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
    // is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
    public static bool IsSorted(List<int> lst) {
        for (int i = 0; i < lst.Count - 1; i++) {
            if (lst[i] > lst[i + 1]) {
                return false;
            }
        }
        return true;

    }
    public static void Main(string[] args) {
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)5}))) == (true));
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5}))) == (true));
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)1, (int)3, (int)2, (int)4, (int)5}))) == (false));
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6}))) == (true));
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6, (int)7}))) == (true));
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)1, (int)3, (int)2, (int)4, (int)5, (int)6, (int)7}))) == (false));
    Debug.Assert(IsSorted((new List<int>())) == (true));
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)1}))) == (true));
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)3, (int)2, (int)1}))) == (false));
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)1, (int)2, (int)2, (int)2, (int)3, (int)4}))) == (false));
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)3, (int)3, (int)4}))) == (false));
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)1, (int)2, (int)2, (int)3, (int)3, (int)4}))) == (true));
    Debug.Assert(IsSorted((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4}))) == (true));
    }

}
