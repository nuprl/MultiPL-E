using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
    // Examples
    // solution([5, 8, 7, 1]) ==> 12
    // solution([3, 3, 3, 3, 3]) ==> 9
    // solution([30, 13, 24, 321]) ==>0
    public static int Solution(List<int> lst) {
        int sum = 0;
        for (int i = 0; i < lst.Count; i++) {
            if (i % 2 == 0 && lst[i] % 2 != 0) {
                sum += lst[i];
            }
        }
        return sum;

    }
    public static void Main(string[] args) {
    Debug.Assert(Solution((new List<int>(new int[]{(int)5, (int)8, (int)7, (int)1}))) == (12));
    Debug.Assert(Solution((new List<int>(new int[]{(int)3, (int)3, (int)3, (int)3, (int)3}))) == (9));
    Debug.Assert(Solution((new List<int>(new int[]{(int)30, (int)13, (int)24, (int)321}))) == (0));
    Debug.Assert(Solution((new List<int>(new int[]{(int)5, (int)9}))) == (5));
    Debug.Assert(Solution((new List<int>(new int[]{(int)2, (int)4, (int)8}))) == (0));
    Debug.Assert(Solution((new List<int>(new int[]{(int)30, (int)13, (int)23, (int)32}))) == (23));
    Debug.Assert(Solution((new List<int>(new int[]{(int)3, (int)13, (int)2, (int)9}))) == (3));
    }

}
