using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that accepts a list of strings.
    // The list contains different words. Return the word with maximum number
    // of unique characters. If multiple strings have maximum number of unique
    // characters, return the one which comes first in lexicographical order.
    // find_max(["name", "of", "string"]) == "string"
    // find_max(["name", "enam", "game"]) == "enam"
    // find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
    public static string FindMax(List<string> words) {
        int max = 0;
        string maxWord = "";
        foreach (string word in words) {
            int counter = 0;
            foreach (char c in word) {
                if (word.IndexOf(c) == word.LastIndexOf(c)) {
                    counter++;
                }
            }
            if (counter > max) {
                max = counter;
                maxWord = word;
            }
        }
        return maxWord;

    }
    public static void Main(string[] args) {
    Debug.Assert(FindMax((new List<string>(new string[]{(string)"name", (string)"of", (string)"string"}))).Equals(("string")));
    Debug.Assert(FindMax((new List<string>(new string[]{(string)"name", (string)"enam", (string)"game"}))).Equals(("enam")));
    Debug.Assert(FindMax((new List<string>(new string[]{(string)"aaaaaaa", (string)"bb", (string)"cc"}))).Equals(("aaaaaaa")));
    Debug.Assert(FindMax((new List<string>(new string[]{(string)"abc", (string)"cba"}))).Equals(("abc")));
    Debug.Assert(FindMax((new List<string>(new string[]{(string)"play", (string)"this", (string)"game", (string)"of", (string)"footbott"}))).Equals(("footbott")));
    Debug.Assert(FindMax((new List<string>(new string[]{(string)"we", (string)"are", (string)"gonna", (string)"rock"}))).Equals(("gonna")));
    Debug.Assert(FindMax((new List<string>(new string[]{(string)"we", (string)"are", (string)"a", (string)"mad", (string)"nation"}))).Equals(("nation")));
    Debug.Assert(FindMax((new List<string>(new string[]{(string)"this", (string)"is", (string)"a", (string)"prrk"}))).Equals(("this")));
    Debug.Assert(FindMax((new List<string>(new string[]{(string)"b"}))).Equals(("b")));
    Debug.Assert(FindMax((new List<string>(new string[]{(string)"play", (string)"play", (string)"play"}))).Equals(("play")));
    }

}
