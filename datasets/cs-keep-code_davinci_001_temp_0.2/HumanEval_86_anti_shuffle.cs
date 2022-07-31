using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that takes a string and returns an ordered version of it.
    // Ordered version of string, is a string where all words (separated by space)
    // are replaced by a new word where all the characters arranged in
    // ascending order based on ascii value.
    // Note: You should keep the order of words and blank spaces in the sentence.
    // For example:
    // anti_shuffle('Hi') returns 'Hi'
    // anti_shuffle('hello') returns 'ehllo'
    // anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
    public static string AntiShuffle(string s) {
        // Write your code here
        string[] words = s.Split(' ');
        StringBuilder sb = new StringBuilder();
        foreach (string word in words) {
            sb.Append(SortString(word));
        }
        return sb.ToString();

    }
    public static void Main(string[] args) {
    Debug.Assert(AntiShuffle(("Hi")).Equals(("Hi")));
    Debug.Assert(AntiShuffle(("hello")).Equals(("ehllo")));
    Debug.Assert(AntiShuffle(("number")).Equals(("bemnru")));
    Debug.Assert(AntiShuffle(("abcd")).Equals(("abcd")));
    Debug.Assert(AntiShuffle(("Hello World!!!")).Equals(("Hello !!!Wdlor")));
    Debug.Assert(AntiShuffle(("")).Equals(("")));
    Debug.Assert(AntiShuffle(("Hi. My name is Mister Robot. How are you?")).Equals((".Hi My aemn is Meirst .Rboot How aer ?ouy")));
    }

}
