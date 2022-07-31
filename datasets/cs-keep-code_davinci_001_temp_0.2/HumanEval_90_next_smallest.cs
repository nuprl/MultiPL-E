using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given a list of integers.
    // Write a function next_smallest() that returns the 2nd smallest element of the list.
    // Return None if there is no such element.
    // next_smallest([1, 2, 3, 4, 5]) == 2
    // next_smallest([5, 1, 4, 3, 2]) == 2
    // next_smallest([]) == None
    // next_smallest([1, 1]) == None
    public static Nullable<int> NextSmallest(List<int> lst) {
        if (lst.Count == 0) {
            return null;
        }
        if (lst.Count == 1) {
            return lst[0];
        }
        int smallest = int.MaxValue;
        int secondSmallest = int.MaxValue;
        foreach (int i in lst) {
            if (i < smallest) {
                secondSmallest = smallest;
                smallest = i;
            } else if (i < secondSmallest) {
                secondSmallest = i;
            }
        }
        return secondSmallest;

    }
    public static void Main(string[] args) {
    Debug.Assert(NextSmallest((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5}))).Equals(2));
    Debug.Assert(NextSmallest((new List<int>(new int[]{(int)5, (int)1, (int)4, (int)3, (int)2}))).Equals(2));
    Debug.Assert(NextSmallest((new List<int>())).Equals(null));
    Debug.Assert(NextSmallest((new List<int>(new int[]{(int)1, (int)1}))).Equals(null));
    Debug.Assert(NextSmallest((new List<int>(new int[]{(int)1, (int)1, (int)1, (int)1, (int)0}))).Equals(1));
    Debug.Assert(NextSmallest((new List<int>(new int[]{(int)1, (int)1}))).Equals(null));
    Debug.Assert(NextSmallest((new List<int>(new int[]{(int)-35, (int)34, (int)12, (int)-45}))).Equals(-35));
    }

}
