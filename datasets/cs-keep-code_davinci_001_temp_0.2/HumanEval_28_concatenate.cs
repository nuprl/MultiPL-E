using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Concatenate list of strings into a single string
    // >>> concatenate([])
    // ''
    // >>> concatenate(['a', 'b', 'c'])
    // 'abc'
    public static string Concatenate(List<string> strings) {
        string result = "";
        foreach (string s in strings) {
            result += s;
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Concatenate((new List<string>())).Equals(("")));
    Debug.Assert(Concatenate((new List<string>(new string[]{(string)"x", (string)"y", (string)"z"}))).Equals(("xyz")));
    Debug.Assert(Concatenate((new List<string>(new string[]{(string)"x", (string)"y", (string)"z", (string)"w", (string)"k"}))).Equals(("xyzwk")));
    }

}
