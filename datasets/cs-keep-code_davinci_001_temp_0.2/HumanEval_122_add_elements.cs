using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a non-empty array of integers arr and an integer k, return
    // the sum of the elements with at most two digits from the first k elements of arr.
    // Example:
    // Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
    // Output: 24 # sum of 21 + 3
    // Constraints:
    // 1. 1 <= len(arr) <= 100
    // 2. 1 <= k <= len(arr)
    public static int AddElements(List<int> arr, int k) {
        int sum = 0;
        for (int i = 0; i < k; i++) {
            if (arr[i] < 100) {
                sum += arr[i];
            }
        }
        return sum;

    }
    public static void Main(string[] args) {
    Debug.Assert(AddElements((new List<int>(new int[]{(int)1, (int)-2, (int)-3, (int)41, (int)57, (int)76, (int)87, (int)88, (int)99})), (3)) == (-4));
    Debug.Assert(AddElements((new List<int>(new int[]{(int)111, (int)121, (int)3, (int)4000, (int)5, (int)6})), (2)) == (0));
    Debug.Assert(AddElements((new List<int>(new int[]{(int)11, (int)21, (int)3, (int)90, (int)5, (int)6, (int)7, (int)8, (int)9})), (4)) == (125));
    Debug.Assert(AddElements((new List<int>(new int[]{(int)111, (int)21, (int)3, (int)4000, (int)5, (int)6, (int)7, (int)8, (int)9})), (4)) == (24));
    Debug.Assert(AddElements((new List<int>(new int[]{(int)1})), (1)) == (1));
    }

}
