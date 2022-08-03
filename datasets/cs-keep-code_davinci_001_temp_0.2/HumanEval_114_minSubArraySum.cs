using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given an array of integers nums, find the minimum sum of any non-empty sub-array
    // of nums.
    // Example
    // minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
    // minSubArraySum([-1, -2, -3]) == -6
    public static int Minsubarraysum(List<int> nums) {
        int min = int.MaxValue;
        int sum = 0;
        for (int i = 0; i < nums.Count; i++) {
            sum += nums[i];
            if (sum < min) {
                min = sum;
            }
            if (sum > 0) {
                sum = 0;
            }
        }
        return min;

    }
    public static void Main(string[] args) {
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)2, (int)3, (int)4, (int)1, (int)2, (int)4}))) == (1));
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)-1, (int)-2, (int)-3}))) == (-6));
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)-1, (int)-2, (int)-3, (int)2, (int)-10}))) == (-14));
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)0}))) == (0));
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)0, (int)10, (int)20, (int)1000000}))) == (0));
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)-1, (int)-2, (int)-3, (int)10, (int)-5}))) == (-6));
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)100, (int)-1, (int)-2, (int)-3, (int)10, (int)-5}))) == (-6));
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)10, (int)11, (int)13, (int)8, (int)3, (int)4}))) == (3));
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)100, (int)-33, (int)32, (int)-1, (int)0, (int)-2}))) == (-33));
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)-10}))) == (-10));
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)7}))) == (7));
    Debug.Assert(Minsubarraysum((new List<int>(new int[]{(int)1, (int)-1}))) == (-1));
    }

}
