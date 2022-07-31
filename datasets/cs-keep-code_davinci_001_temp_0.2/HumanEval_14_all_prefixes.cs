using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return list of all prefixes from shortest to longest of the input string
    // >>> all_prefixes('abc')
    // ['a', 'ab', 'abc']
    public static List<string> AllPrefixes(string str) {
        List<string> prefixes = new List<string>();
        for (int i = 0; i < str.Length; i++) {
            prefixes.Add(str.Substring(0, i + 1));
        }
        return prefixes;

    }
    public static void Main(string[] args) {
    Debug.Assert(AllPrefixes(("")).Equals((new List<string>())));
    Debug.Assert(AllPrefixes(("asdfgh")).Equals((new List<string>(new string[]{(string)"a", (string)"as", (string)"asd", (string)"asdf", (string)"asdfg", (string)"asdfgh"}))));
    Debug.Assert(AllPrefixes(("WWW")).Equals((new List<string>(new string[]{(string)"W", (string)"WW", (string)"WWW"}))));
    }

}
