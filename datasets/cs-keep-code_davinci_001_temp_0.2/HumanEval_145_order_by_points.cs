using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function which sorts the given list of integers
    // in ascending order according to the sum of their digits.
    // Note: if there are several items with similar sum of their digits,
    // order them based on their index in original list.
    // For example:
    // >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
    // >>> order_by_points([]) == []
    public static List<int> OrderByPoints(List<int> nums) {
        // Write your code here
        List<int> result = new List<int>();
        List<int> numsCopy = new List<int>();
        numsCopy.AddRange(nums);
        numsCopy.Sort();
        int sum = 0;
        int index = 0;
        for (int i = 0; i < nums.Count; i++) {
            sum = 0;
            index = 0;
            while (nums[i] > 0) {
                sum += nums[i] % 10;
                nums[i] /= 10;
                index++;
            }
            result.Add(numsCopy[sum * index]);
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(OrderByPoints((new List<int>(new int[]{(int)1, (int)11, (int)-1, (int)-11, (int)-12}))).Equals((new List<int>(new int[]{(int)-1, (int)-11, (int)1, (int)-12, (int)11}))));
    Debug.Assert(OrderByPoints((new List<int>(new int[]{(int)1234, (int)423, (int)463, (int)145, (int)2, (int)423, (int)423, (int)53, (int)6, (int)37, (int)3457, (int)3, (int)56, (int)0, (int)46}))).Equals((new List<int>(new int[]{(int)0, (int)2, (int)3, (int)6, (int)53, (int)423, (int)423, (int)423, (int)1234, (int)145, (int)37, (int)46, (int)56, (int)463, (int)3457}))));
    Debug.Assert(OrderByPoints((new List<int>())).Equals((new List<int>())));
    Debug.Assert(OrderByPoints((new List<int>(new int[]{(int)1, (int)-11, (int)-32, (int)43, (int)54, (int)-98, (int)2, (int)-3}))).Equals((new List<int>(new int[]{(int)-3, (int)-32, (int)-98, (int)-11, (int)1, (int)2, (int)43, (int)54}))));
    Debug.Assert(OrderByPoints((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6, (int)7, (int)8, (int)9, (int)10, (int)11}))).Equals((new List<int>(new int[]{(int)1, (int)10, (int)2, (int)11, (int)3, (int)4, (int)5, (int)6, (int)7, (int)8, (int)9}))));
    Debug.Assert(OrderByPoints((new List<int>(new int[]{(int)0, (int)6, (int)6, (int)-76, (int)-21, (int)23, (int)4}))).Equals((new List<int>(new int[]{(int)-76, (int)-21, (int)0, (int)4, (int)23, (int)6, (int)6}))));
    }

}
