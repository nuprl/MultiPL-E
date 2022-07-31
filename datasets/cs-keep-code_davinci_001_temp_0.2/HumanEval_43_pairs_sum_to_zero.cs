using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // pairs_sum_to_zero takes a list of integers as an input.
    // it returns True if there are two distinct elements in the list that
    // sum to zero, and False otherwise.
    // >>> pairs_sum_to_zero([1, 3, 5, 0])
    // False
    // >>> pairs_sum_to_zero([1, 3, -2, 1])
    // False
    // >>> pairs_sum_to_zero([1, 2, 3, 7])
    // False
    // >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
    // True
    // >>> pairs_sum_to_zero([1])
    // False
    public static bool PairsSumToZero(List<int> l) {
        // your code here
        return false;

    }
    public static void Main(string[] args) {
    Debug.Assert(PairsSumToZero((new List<int>(new int[]{(int)1, (int)3, (int)5, (int)0}))) == (false));
    Debug.Assert(PairsSumToZero((new List<int>(new int[]{(int)1, (int)3, (int)-2, (int)1}))) == (false));
    Debug.Assert(PairsSumToZero((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)7}))) == (false));
    Debug.Assert(PairsSumToZero((new List<int>(new int[]{(int)2, (int)4, (int)-5, (int)3, (int)5, (int)7}))) == (true));
    Debug.Assert(PairsSumToZero((new List<int>(new int[]{(int)1}))) == (false));
    Debug.Assert(PairsSumToZero((new List<int>(new int[]{(int)-3, (int)9, (int)-1, (int)3, (int)2, (int)30}))) == (true));
    Debug.Assert(PairsSumToZero((new List<int>(new int[]{(int)-3, (int)9, (int)-1, (int)3, (int)2, (int)31}))) == (true));
    Debug.Assert(PairsSumToZero((new List<int>(new int[]{(int)-3, (int)9, (int)-1, (int)4, (int)2, (int)30}))) == (false));
    Debug.Assert(PairsSumToZero((new List<int>(new int[]{(int)-3, (int)9, (int)-1, (int)4, (int)2, (int)31}))) == (false));
    }

}
