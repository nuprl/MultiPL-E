using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Task
    // We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
    // then check if the result string is palindrome.
    // A string is called palindrome if it reads the same backward as forward.
    // You should return a tuple containing the result string and True/False for the check.
    // Example
    // For s = "abcde", c = "ae", the result should be ('bcd',False)
    // For s = "abcdef", c = "b"  the result should be ('acdef',False)
    // For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
    public static Tuple<string, bool> ReverseDelete(string s, string c) {
        // write your code in C# 6.0 with .NET 4.5 (Mono)
        string result = "";
        for (int i = 0; i < s.Length; i++) {
            if (!c.Contains(s[i])) {
                result += s[i];
            }
        }
        return new Tuple<string, bool>(result, result.Reverse().SequenceEqual(result));

    }
    public static void Main(string[] args) {
    Debug.Assert(ReverseDelete(("abcde"), ("ae")).Equals((Tuple.Create("bcd", false))));
    Debug.Assert(ReverseDelete(("abcdef"), ("b")).Equals((Tuple.Create("acdef", false))));
    Debug.Assert(ReverseDelete(("abcdedcba"), ("ab")).Equals((Tuple.Create("cdedc", true))));
    Debug.Assert(ReverseDelete(("dwik"), ("w")).Equals((Tuple.Create("dik", false))));
    Debug.Assert(ReverseDelete(("a"), ("a")).Equals((Tuple.Create("", true))));
    Debug.Assert(ReverseDelete(("abcdedcba"), ("")).Equals((Tuple.Create("abcdedcba", true))));
    Debug.Assert(ReverseDelete(("abcdedcba"), ("v")).Equals((Tuple.Create("abcdedcba", true))));
    Debug.Assert(ReverseDelete(("vabba"), ("v")).Equals((Tuple.Create("abba", true))));
    Debug.Assert(ReverseDelete(("mamma"), ("mia")).Equals((Tuple.Create("", true))));
    }

}
