using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given an array of non-negative integers, return a copy of the given array after sorting,
    // you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
    // or sort it in descending order if the sum( first index value, last index value) is even.
    // Note:
    // * don't change the given array.
    // Examples:
    // * sort_array([]) => []
    // * sort_array([5]) => [5]
    // * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
    // * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
    public static List<int> SortArray(List<int> array) {
        // Write your code here
        int sum = array[0] + array[array.Count - 1];
        if (sum % 2 == 0) {
            array.Sort();
            array.Reverse();
        } else {
            array.Sort();
        }
        return array;

    }
    public static void Main(string[] args) {
    Debug.Assert(SortArray((new List<int>())).Equals((new List<int>())));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)5}))).Equals((new List<int>(new int[]{(int)5}))));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)2, (int)4, (int)3, (int)0, (int)1, (int)5}))).Equals((new List<int>(new int[]{(int)0, (int)1, (int)2, (int)3, (int)4, (int)5}))));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)2, (int)4, (int)3, (int)0, (int)1, (int)5, (int)6}))).Equals((new List<int>(new int[]{(int)6, (int)5, (int)4, (int)3, (int)2, (int)1, (int)0}))));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)2, (int)1}))).Equals((new List<int>(new int[]{(int)1, (int)2}))));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)15, (int)42, (int)87, (int)32, (int)11, (int)0}))).Equals((new List<int>(new int[]{(int)0, (int)11, (int)15, (int)32, (int)42, (int)87}))));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)21, (int)14, (int)23, (int)11}))).Equals((new List<int>(new int[]{(int)23, (int)21, (int)14, (int)11}))));
    }

}
