using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function vowels_count which takes a string representing
    // a word as input and returns the number of vowels in the string.
    // Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
    // vowel, but only when it is at the end of the given word.
    // Example:
    // >>> vowels_count("abcde")
    // 2
    // >>> vowels_count("ACEDY")
    // 3
    public static int VowelsCount(string s) {
        int count = 0;
        for (int i = 0; i < s.Length; i++) {
            if (s[i] == 'a' || s[i] == 'e' || s[i] == 'i' || s[i] == 'o' || s[i] == 'u') {
                count++;
            }
        }
        return count;

    }
    public static void Main(string[] args) {
    Debug.Assert(VowelsCount(("abcde")) == (2));
    Debug.Assert(VowelsCount(("Alone")) == (3));
    Debug.Assert(VowelsCount(("key")) == (2));
    Debug.Assert(VowelsCount(("bye")) == (1));
    Debug.Assert(VowelsCount(("keY")) == (2));
    Debug.Assert(VowelsCount(("bYe")) == (1));
    Debug.Assert(VowelsCount(("ACEDY")) == (3));
    }

}
