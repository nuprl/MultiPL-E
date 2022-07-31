using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // "Given an array representing a branch of a tree that has non-negative integer nodes
    // your task is to pluck one of the nodes and return it.
    // The plucked node should be the node with the smallest even value.
    // If multiple nodes with the same smallest even value are found return the node that has smallest index.
    // The plucked node should be returned in a list, [ smalest_value, its index ],
    // If there are no even values or the given array is empty, return [].
    // Example 1:
    // Input: [4,2,3]
    // Output: [2, 1]
    // Explanation: 2 has the smallest even value, and 2 has the smallest index.
    // Example 2:
    // Input: [1,2,3]
    // Output: [2, 1]
    // Explanation: 2 has the smallest even value, and 2 has the smallest index. 
    // Example 3:
    // Input: []
    // Output: []
    // Example 4:
    // Input: [5, 0, 3, 0, 4, 2]
    // Output: [0, 1]
    // Explanation: 0 is the smallest value, but  there are two zeros,
    // so we will choose the first zero, which has the smallest index.
    // Constraints:
    // * 1 <= nodes.length <= 10000
    // * 0 <= node.value
    public static List<int> Pluck(List<int> arr) {
        if (arr.Count == 0) return new List<int>();
        var evens = arr.Where(x => x % 2 == 0).ToList();
        if (evens.Count == 0) return new List<int>();
        var minEven = evens.Min();
        var minIndex = arr.IndexOf(minEven);
        return new List<int>() { minEven, minIndex };

    }
    public static void Main(string[] args) {
    Debug.Assert(Pluck((new List<int>(new int[]{(int)4, (int)2, (int)3}))).Equals((new List<int>(new int[]{(int)2, (int)1}))));
    Debug.Assert(Pluck((new List<int>(new int[]{(int)1, (int)2, (int)3}))).Equals((new List<int>(new int[]{(int)2, (int)1}))));
    Debug.Assert(Pluck((new List<int>())).Equals((new List<int>())));
    Debug.Assert(Pluck((new List<int>(new int[]{(int)5, (int)0, (int)3, (int)0, (int)4, (int)2}))).Equals((new List<int>(new int[]{(int)0, (int)1}))));
    Debug.Assert(Pluck((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)0, (int)5, (int)3}))).Equals((new List<int>(new int[]{(int)0, (int)3}))));
    Debug.Assert(Pluck((new List<int>(new int[]{(int)5, (int)4, (int)8, (int)4, (int)8}))).Equals((new List<int>(new int[]{(int)4, (int)1}))));
    Debug.Assert(Pluck((new List<int>(new int[]{(int)7, (int)6, (int)7, (int)1}))).Equals((new List<int>(new int[]{(int)6, (int)1}))));
    Debug.Assert(Pluck((new List<int>(new int[]{(int)7, (int)9, (int)7, (int)1}))).Equals((new List<int>())));
    }

}
