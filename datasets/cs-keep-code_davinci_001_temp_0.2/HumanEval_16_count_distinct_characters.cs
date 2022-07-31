using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a string, find out how many distinct characters (regardless of case) does it consist of
    // >>> count_distinct_characters('xyzXYZ')
    // 3
    // >>> count_distinct_characters('Jerry')
    // 4
    public static int CountDistinctCharacters(string str) {
        var distinct = new HashSet<char>();
        foreach (var c in str) {
            distinct.Add(char.ToLower(c));
        }
        return distinct.Count;

    }
    public static void Main(string[] args) {
    Debug.Assert(CountDistinctCharacters(("")) == (0));
    Debug.Assert(CountDistinctCharacters(("abcde")) == (5));
    Debug.Assert(CountDistinctCharacters(("abcdecadeCADE")) == (5));
    Debug.Assert(CountDistinctCharacters(("aaaaAAAAaaaa")) == (1));
    Debug.Assert(CountDistinctCharacters(("Jerry jERRY JeRRRY")) == (5));
    }

}
