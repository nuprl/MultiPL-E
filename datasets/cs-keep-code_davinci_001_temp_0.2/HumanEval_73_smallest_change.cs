using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given an array arr of integers, find the minimum number of elements that
    // need to be changed to make the array palindromic. A palindromic array is an array that
    // is read the same backwards and forwards. In one change, you can change one element to any other element.
    // For example:
    // smallest_change([1,2,3,5,4,7,9,6]) == 4
    // smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
    // smallest_change([1, 2, 3, 2, 1]) == 0
    public static int SmallestChange(List<int> arr) {
        int count = 0;
        for (int i = 0; i < arr.Count / 2; i++) {
            if (arr[i] != arr[arr.Count - 1 - i]) {
                count++;
            }
        }
        return count;

    }
    public static void Main(string[] args) {
    Debug.Assert(SmallestChange((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)5, (int)4, (int)7, (int)9, (int)6}))) == (4));
    Debug.Assert(SmallestChange((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)3, (int)2, (int)2}))) == (1));
    Debug.Assert(SmallestChange((new List<int>(new int[]{(int)1, (int)4, (int)2}))) == (1));
    Debug.Assert(SmallestChange((new List<int>(new int[]{(int)1, (int)4, (int)4, (int)2}))) == (1));
    Debug.Assert(SmallestChange((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)2, (int)1}))) == (0));
    Debug.Assert(SmallestChange((new List<int>(new int[]{(int)3, (int)1, (int)1, (int)3}))) == (0));
    Debug.Assert(SmallestChange((new List<int>(new int[]{(int)1}))) == (0));
    Debug.Assert(SmallestChange((new List<int>(new int[]{(int)0, (int)1}))) == (1));
    }

}
