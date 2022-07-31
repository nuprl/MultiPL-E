using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Filter an input list of strings only for ones that contain given substring
    // >>> filter_by_substring([], 'a')
    // []
    // >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
    // ['abc', 'bacd', 'array']
    public static List<string> FilterBySubstring(List<string> strings, string substring) {
        List<string> result = new List<string>();
        foreach (string s in strings) {
            if (s.Contains(substring)) {
                result.Add(s);
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(FilterBySubstring((new List<string>()), ("john")).Equals((new List<string>())));
    Debug.Assert(FilterBySubstring((new List<string>(new string[]{(string)"xxx", (string)"asd", (string)"xxy", (string)"john doe", (string)"xxxAAA", (string)"xxx"})), ("xxx")).Equals((new List<string>(new string[]{(string)"xxx", (string)"xxxAAA", (string)"xxx"}))));
    Debug.Assert(FilterBySubstring((new List<string>(new string[]{(string)"xxx", (string)"asd", (string)"aaaxxy", (string)"john doe", (string)"xxxAAA", (string)"xxx"})), ("xx")).Equals((new List<string>(new string[]{(string)"xxx", (string)"aaaxxy", (string)"xxxAAA", (string)"xxx"}))));
    Debug.Assert(FilterBySubstring((new List<string>(new string[]{(string)"grunt", (string)"trumpet", (string)"prune", (string)"gruesome"})), ("run")).Equals((new List<string>(new string[]{(string)"grunt", (string)"prune"}))));
    }

}
