using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a string s and a natural number n, you have been tasked to implement 
    // a function that returns a list of all words from string s that contain exactly 
    // n consonants, in order these words appear in the string s.
    // If the string s is empty then the function should return an empty list.
    // Note: you may assume the input string contains only letters and spaces.
    // Examples:
    // select_words("Mary had a little lamb", 4) ==> ["little"]
    // select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
    // select_words("simple white space", 2) ==> []
    // select_words("Hello world", 4) ==> ["world"]
    // select_words("Uncle sam", 3) ==> ["Uncle"]
    public static List<string> SelectWords(string s, int n) {
        List<string> result = new List<string>();
        if (s.Length == 0) {
            return result;
        }
        string[] words = s.Split(' ');
        for (int i = 0; i < words.Length; i++) {
            int count = 0;
            for (int j = 0; j < words[i].Length; j++) {
                if (words[i][j] != 'a' && words[i][j] != 'e' && words[i][j] != 'i' && words[i][j] != 'o' && words[i][j] != 'u') {
                    count++;
                }
            }
            if (count == n) {
                result.Add(words[i]);
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(SelectWords(("Mary had a little lamb"), (4)).Equals((new List<string>(new string[]{(string)"little"}))));
    Debug.Assert(SelectWords(("Mary had a little lamb"), (3)).Equals((new List<string>(new string[]{(string)"Mary", (string)"lamb"}))));
    Debug.Assert(SelectWords(("simple white space"), (2)).Equals((new List<string>())));
    Debug.Assert(SelectWords(("Hello world"), (4)).Equals((new List<string>(new string[]{(string)"world"}))));
    Debug.Assert(SelectWords(("Uncle sam"), (3)).Equals((new List<string>(new string[]{(string)"Uncle"}))));
    Debug.Assert(SelectWords((""), (4)).Equals((new List<string>())));
    Debug.Assert(SelectWords(("a b c d e f"), (1)).Equals((new List<string>(new string[]{(string)"b", (string)"c", (string)"d", (string)"f"}))));
    }

}
