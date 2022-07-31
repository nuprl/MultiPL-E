using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given an array arr of integers and a positive integer k, return a sorted list 
    // of length k with the maximum k numbers in arr.
    // Example 1:
    // Input: arr = [-3, -4, 5], k = 3
    // Output: [-4, -3, 5]
    // Example 2:
    // Input: arr = [4, -4, 4], k = 2
    // Output: [4, 4]
    // Example 3:
    // Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
    // Output: [2]
    // Note:
    // 1. The length of the array will be in the range of [1, 1000].
    // 2. The elements in the array will be in the range of [-1000, 1000].
    // 3. 0 <= k <= len(arr)
    public static List<int> Maximum(List<int> arr, int k) {
        List<int> result = new List<int>();
        for (int i = 0; i < k; i++) {
            int max = int.MinValue;
            int maxIndex = -1;
            for (int j = 0; j < arr.Count; j++) {
                if (arr[j] > max) {
                    max = arr[j];
                    maxIndex = j;
                }
            }
            result.Add(max);
            arr.RemoveAt(maxIndex);
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Maximum((new List<int>(new int[]{(int)-3, (int)-4, (int)5})), (3)).Equals((new List<int>(new int[]{(int)-4, (int)-3, (int)5}))));
    Debug.Assert(Maximum((new List<int>(new int[]{(int)4, (int)-4, (int)4})), (2)).Equals((new List<int>(new int[]{(int)4, (int)4}))));
    Debug.Assert(Maximum((new List<int>(new int[]{(int)-3, (int)2, (int)1, (int)2, (int)-1, (int)-2, (int)1})), (1)).Equals((new List<int>(new int[]{(int)2}))));
    Debug.Assert(Maximum((new List<int>(new int[]{(int)123, (int)-123, (int)20, (int)0, (int)1, (int)2, (int)-3})), (3)).Equals((new List<int>(new int[]{(int)2, (int)20, (int)123}))));
    Debug.Assert(Maximum((new List<int>(new int[]{(int)-123, (int)20, (int)0, (int)1, (int)2, (int)-3})), (4)).Equals((new List<int>(new int[]{(int)0, (int)1, (int)2, (int)20}))));
    Debug.Assert(Maximum((new List<int>(new int[]{(int)5, (int)15, (int)0, (int)3, (int)-13, (int)-8, (int)0})), (7)).Equals((new List<int>(new int[]{(int)-13, (int)-8, (int)0, (int)0, (int)3, (int)5, (int)15}))));
    Debug.Assert(Maximum((new List<int>(new int[]{(int)-1, (int)0, (int)2, (int)5, (int)3, (int)-10})), (2)).Equals((new List<int>(new int[]{(int)3, (int)5}))));
    Debug.Assert(Maximum((new List<int>(new int[]{(int)1, (int)0, (int)5, (int)-7})), (1)).Equals((new List<int>(new int[]{(int)5}))));
    Debug.Assert(Maximum((new List<int>(new int[]{(int)4, (int)-4})), (2)).Equals((new List<int>(new int[]{(int)-4, (int)4}))));
    Debug.Assert(Maximum((new List<int>(new int[]{(int)-10, (int)10})), (2)).Equals((new List<int>(new int[]{(int)-10, (int)10}))));
    Debug.Assert(Maximum((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)-23, (int)243, (int)-400, (int)0})), (0)).Equals((new List<int>())));
    }

}
