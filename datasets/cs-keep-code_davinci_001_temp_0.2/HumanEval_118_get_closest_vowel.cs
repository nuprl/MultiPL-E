using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given a word. Your task is to find the closest vowel that stands between 
    // two consonants from the right side of the word (case sensitive).
    // Vowels in the beginning and ending doesn't count. Return empty string if you didn't
    // find any vowel met the above condition. 
    // You may assume that the given string contains English letter only.
    // Example:
    // get_closest_vowel("yogurt") ==> "u"
    // get_closest_vowel("FULL") ==> "U"
    // get_closest_vowel("quick") ==> ""
    // get_closest_vowel("ab") ==> ""
    public static string GetClosestVowel(string word) {
        // your code here
        return "";

    }
    public static void Main(string[] args) {
    Debug.Assert(GetClosestVowel(("yogurt")).Equals(("u")));
    Debug.Assert(GetClosestVowel(("full")).Equals(("u")));
    Debug.Assert(GetClosestVowel(("easy")).Equals(("")));
    Debug.Assert(GetClosestVowel(("eAsy")).Equals(("")));
    Debug.Assert(GetClosestVowel(("ali")).Equals(("")));
    Debug.Assert(GetClosestVowel(("bad")).Equals(("a")));
    Debug.Assert(GetClosestVowel(("most")).Equals(("o")));
    Debug.Assert(GetClosestVowel(("ab")).Equals(("")));
    Debug.Assert(GetClosestVowel(("ba")).Equals(("")));
    Debug.Assert(GetClosestVowel(("quick")).Equals(("")));
    Debug.Assert(GetClosestVowel(("anime")).Equals(("i")));
    Debug.Assert(GetClosestVowel(("Asia")).Equals(("")));
    Debug.Assert(GetClosestVowel(("Above")).Equals(("o")));
    }

}
