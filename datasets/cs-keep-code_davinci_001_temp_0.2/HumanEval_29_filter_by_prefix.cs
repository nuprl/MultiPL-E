using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Filter an input list of strings only for ones that start with a given prefix.
    // >>> filter_by_prefix([], 'a')
    // []
    // >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
    // ['abc', 'array']
    public static List<string> FilterByPrefix(List<string> strings, string prefix) {
        List<string> result = new List<string>();
        foreach (string s in strings) {
            if (s.StartsWith(prefix)) {
                result.Add(s);
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(FilterByPrefix((new List<string>()), ("john")).Equals((new List<string>())));
    Debug.Assert(FilterByPrefix((new List<string>(new string[]{(string)"xxx", (string)"asd", (string)"xxy", (string)"john doe", (string)"xxxAAA", (string)"xxx"})), ("xxx")).Equals((new List<string>(new string[]{(string)"xxx", (string)"xxxAAA", (string)"xxx"}))));
    }

}
