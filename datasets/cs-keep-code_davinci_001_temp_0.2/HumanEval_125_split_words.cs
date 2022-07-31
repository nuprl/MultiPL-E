using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
    // should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
    // alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
    // Examples
    // split_words("Hello world!") ➞ ["Hello", "world!"]
    // split_words("Hello,world!") ➞ ["Hello", "world!"]
    // split_words("abcdef") == 3
    public static Union_List_string__int SplitWords(string txt) {
        // your code here
        string[] words = txt.Split(new char[] { ' ', ',' }, StringSplitOptions.RemoveEmptyEntries);
        if (words.Length == 0) {
            return new Union_List_string__int(new List<string>(), new List<int>() { txt.Count(c => c >= 'a' && c <= 'z' && (c - 'a') % 2 != 0) });
        }
        return new Union_List_string__int(words, new List<int>());

    }
    public static void Main(string[] args) {
    Debug.Assert(SplitWords(("Hello world!")).Equals((new Union_List_string__int(new string[]{(string)"Hello", (string)"world!"}))));
    Debug.Assert(SplitWords(("Hello,world!")).Equals((new Union_List_string__int(new string[]{(string)"Hello", (string)"world!"}))));
    Debug.Assert(SplitWords(("Hello world,!")).Equals((new Union_List_string__int(new string[]{(string)"Hello", (string)"world,!"}))));
    Debug.Assert(SplitWords(("Hello,Hello,world !")).Equals((new Union_List_string__int(new string[]{(string)"Hello,Hello,world", (string)"!"}))));
    Debug.Assert(SplitWords(("abcdef")).Equals((Union_List_string__int(3))));
    Debug.Assert(SplitWords(("aaabb")).Equals((Union_List_string__int(2))));
    Debug.Assert(SplitWords(("aaaBb")).Equals((Union_List_string__int(1))));
    Debug.Assert(SplitWords(("")).Equals((Union_List_string__int(0))));
    }

}
