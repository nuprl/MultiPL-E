using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // From a list of integers, remove all elements that occur more than once.
    // Keep order of elements left the same as in the input.
    // >>> remove_duplicates([1, 2, 3, 2, 4])
    // [1, 3, 4]
    public static List<int> RemoveDuplicates(List<int> numbers) {
        var result = new List<int>();
        foreach (var n in numbers) {
            if (!result.Contains(n)) {
                result.Add(n);
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(RemoveDuplicates((new List<int>())).Equals((new List<int>())));
    Debug.Assert(RemoveDuplicates((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4}))).Equals((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4}))));
    Debug.Assert(RemoveDuplicates((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)2, (int)4, (int)3, (int)5}))).Equals((new List<int>(new int[]{(int)1, (int)4, (int)5}))));
    }

}
