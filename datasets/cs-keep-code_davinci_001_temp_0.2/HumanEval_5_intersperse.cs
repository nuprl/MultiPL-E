using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
    // >>> intersperse([], 4)
    // []
    // >>> intersperse([1, 2, 3], 4)
    // [1, 4, 2, 4, 3]
    public static List<int> Intersperse(List<int> numbers, int delimeter) {
        List<int> result = new List<int>();
        for (int i = 0; i < numbers.Count; i++) {
            result.Add(numbers[i]);
            if (i < numbers.Count - 1) {
                result.Add(delimeter);
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Intersperse((new List<int>()), (7)).Equals((new List<int>())));
    Debug.Assert(Intersperse((new List<int>(new int[]{(int)5, (int)6, (int)3, (int)2})), (8)).Equals((new List<int>(new int[]{(int)5, (int)8, (int)6, (int)8, (int)3, (int)8, (int)2}))));
    Debug.Assert(Intersperse((new List<int>(new int[]{(int)2, (int)2, (int)2})), (2)).Equals((new List<int>(new int[]{(int)2, (int)2, (int)2, (int)2, (int)2}))));
    }

}
