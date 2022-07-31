using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
class Problem {
    // Filter given list of any python values only for integers
    // >>> filter_integers(['a', 3.14, 5])
    // [5]
    // >>> filter_integers([1, 2, 3, 'abc', {}, []])
    // [1, 2, 3]
    public static List<long> FilterIntegers(List<std::any> values) {


return new List<long>();
    }
    public static void Main(string[] args) {
    Debug.Assert(FilterIntegers((new List<std::any>())).Equals((new List<long>())));
    Debug.Assert(FilterIntegers((new List<long>(new long[]{(long)4L, (long)new List<std::any>(), (long)23.2f, (long)9L, (long)"adasd"}))).Equals((new List<long>(new long[]{(long)4L, (long)9L}))));
    Debug.Assert(FilterIntegers((new List<std::any>(new long[]{(long)3L, (long)"c", (long)3L, (long)3L, (long)"a", (long)"b"}))).Equals((new List<long>(new long[]{(long)3L, (long)3L, (long)3L}))));
    }

}
