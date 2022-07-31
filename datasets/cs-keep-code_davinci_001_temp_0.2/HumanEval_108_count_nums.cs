using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function count_nums which takes an array of integers and returns
    // the number of elements which has a sum of digits > 0.
    // If a number is negative, then its first signed digit will be negative:
    // e.g. -123 has signed digits -1, 2, and 3.
    // >>> count_nums([]) == 0
    // >>> count_nums([-1, 11, -11]) == 1
    // >>> count_nums([1, 1, 2]) == 3
    public static int CountNums(List<int> arr) {
        return 0;

    }
    public static void Main(string[] args) {
    Debug.Assert(CountNums((new List<int>())) == (0));
    Debug.Assert(CountNums((new List<int>(new int[]{(int)-1, (int)-2, (int)0}))) == (0));
    Debug.Assert(CountNums((new List<int>(new int[]{(int)1, (int)1, (int)2, (int)-2, (int)3, (int)4, (int)5}))) == (6));
    Debug.Assert(CountNums((new List<int>(new int[]{(int)1, (int)6, (int)9, (int)-6, (int)0, (int)1, (int)5}))) == (5));
    Debug.Assert(CountNums((new List<int>(new int[]{(int)1, (int)100, (int)98, (int)-7, (int)1, (int)-1}))) == (4));
    Debug.Assert(CountNums((new List<int>(new int[]{(int)12, (int)23, (int)34, (int)-45, (int)-56, (int)0}))) == (5));
    Debug.Assert(CountNums((new List<int>(new int[]{(int)0, (int)1}))) == (1));
    Debug.Assert(CountNums((new List<int>(new int[]{(int)1}))) == (1));
    }

}
