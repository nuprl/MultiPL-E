using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Create a function that returns a tuple (a, b), where 'a' is
    // the largest of negative integers, and 'b' is the smallest
    // of positive integers in a list.
    // If there is no negative or positive integers, return them as None.
    // Examples:
    // largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
    // largest_smallest_integers([]) == (None, None)
    // largest_smallest_integers([0]) == (None, None)
    public static Tuple<Nullable<int>, Nullable<int>> LargestSmallestIntegers(List<int> lst) {
        if (lst.Count == 0) {
            return new Tuple<Nullable<int>, Nullable<int>>(null, null);
        }
        int maxNegative = int.MinValue;
        int minPositive = int.MaxValue;
        foreach (int i in lst) {
            if (i < 0) {
                if (i > maxNegative) {
                    maxNegative = i;
                }
            } else {
                if (i < minPositive) {
                    minPositive = i;
                }
            }
        }
        if (maxNegative == int.MinValue) {
            return new Tuple<Nullable<int>, Nullable<int>>(null, minPositive);
        } else if (minPositive == int.MaxValue) {
            return new Tuple<Nullable<int>, Nullable<int>>(maxNegative, null);
        } else {
            return new Tuple<Nullable<int>, Nullable<int>>(maxNegative, minPositive);
        }

    }
    public static void Main(string[] args) {
    Debug.Assert(LargestSmallestIntegers((new List<int>(new int[]{(int)2, (int)4, (int)1, (int)3, (int)5, (int)7}))).Equals(Tuple.Create((Nullable<int>)null, 1)));
    Debug.Assert(LargestSmallestIntegers((new List<int>(new int[]{(int)2, (int)4, (int)1, (int)3, (int)5, (int)7, (int)0}))).Equals(Tuple.Create((Nullable<int>)null, 1)));
    Debug.Assert(LargestSmallestIntegers((new List<int>(new int[]{(int)1, (int)3, (int)2, (int)4, (int)5, (int)6, (int)-2}))).Equals(Tuple.Create(-2, 1)));
    Debug.Assert(LargestSmallestIntegers((new List<int>(new int[]{(int)4, (int)5, (int)3, (int)6, (int)2, (int)7, (int)-7}))).Equals(Tuple.Create(-7, 2)));
    Debug.Assert(LargestSmallestIntegers((new List<int>(new int[]{(int)7, (int)3, (int)8, (int)4, (int)9, (int)2, (int)5, (int)-9}))).Equals(Tuple.Create(-9, 2)));
    Debug.Assert(LargestSmallestIntegers((new List<int>())).Equals(Tuple.Create((Nullable<int>)null, (Nullable<int>)null)));
    Debug.Assert(LargestSmallestIntegers((new List<int>(new int[]{(int)0}))).Equals(Tuple.Create((Nullable<int>)null, (Nullable<int>)null)));
    Debug.Assert(LargestSmallestIntegers((new List<int>(new int[]{(int)-1, (int)-3, (int)-5, (int)-6}))).Equals(Tuple.Create(-1, (Nullable<int>)null)));
    Debug.Assert(LargestSmallestIntegers((new List<int>(new int[]{(int)-1, (int)-3, (int)-5, (int)-6, (int)0}))).Equals(Tuple.Create(-1, (Nullable<int>)null)));
    Debug.Assert(LargestSmallestIntegers((new List<int>(new int[]{(int)-6, (int)-4, (int)-4, (int)-3, (int)1}))).Equals(Tuple.Create(-3, 1)));
    Debug.Assert(LargestSmallestIntegers((new List<int>(new int[]{(int)-6, (int)-4, (int)-4, (int)-3, (int)-100, (int)1}))).Equals(Tuple.Create(-3, 1)));
    }

}
