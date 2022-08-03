using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Filter given list of any python values only for integers
    // >>> filter_integers(['a', 3.14, 5])
    // [5]
    // >>> filter_integers([1, 2, 3, 'abc', {}, []])
    // [1, 2, 3]
    public static List<int> FilterIntegers(List<object> values) {
        List<int> result = new List<int>();
        foreach (object value in values) {
            if (value is int) {
                result.Add((int)value);
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(FilterIntegers((new List<object>())).Equals((new List<int>())));
    Debug.Assert(FilterIntegers((new List<object>(new object[]{4, new List<object>(), 23.2f, 9, "adasd"}))).Equals((new List<int>(new int[]{(int)4, (int)9}))));
    Debug.Assert(FilterIntegers((new List<object>(new object[]{3, "c", 3, 3, "a", "b"}))).Equals((new List<int>(new int[]{(int)3, (int)3, (int)3}))));
    }

}
