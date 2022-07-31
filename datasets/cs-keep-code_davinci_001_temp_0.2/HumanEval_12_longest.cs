using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Out of list of strings, return the longest one. Return the first one in case of multiple
    // strings of the same length. Return None in case the input list is empty.
    // >>> longest([])
    // >>> longest(['a', 'b', 'c'])
    // 'a'
    // >>> longest(['a', 'bb', 'ccc'])
    // 'ccc'
    public static string Longest(List<string> strings) {
        if (strings.Count == 0) {
            return null;
        }
        string longest = strings[0];
        for (int i = 1; i < strings.Count; i++) {
            if (strings[i].Length > longest.Length) {
                longest = strings[i];
            }
        }
        return longest;

    }
    public static void Main(string[] args) {
    Debug.Assert(Longest((new List<string>())).Equals(null));
    Debug.Assert(Longest((new List<string>(new string[]{(string)"x", (string)"y", (string)"z"}))).Equals(("x")));
    Debug.Assert(Longest((new List<string>(new string[]{(string)"x", (string)"yyy", (string)"zzzz", (string)"www", (string)"kkkk", (string)"abc"}))).Equals(("zzzz")));
    }

}
