using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Check if two words have the same characters.
    // >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
    // True
    // >>> same_chars('abcd', 'dddddddabc')
    // True
    // >>> same_chars('dddddddabc', 'abcd')
    // True
    // >>> same_chars('eabcd', 'dddddddabc')
    // False
    // >>> same_chars('abcd', 'dddddddabce')
    // False
    // >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
    // False
    public static bool SameChars(string s0, string s1) {
        if (s0.Length != s1.Length) {
            return false;
        }
        int[] counts = new int[256];
        foreach (char c in s0) {
            counts[c]++;
        }
        foreach (char c in s1) {
            counts[c]--;
            if (counts[c] < 0) {
                return false;
            }
        }
        return true;

    }
    public static void Main(string[] args) {
    Debug.Assert(SameChars(("eabcdzzzz"), ("dddzzzzzzzddeddabc")) == (true));
    Debug.Assert(SameChars(("abcd"), ("dddddddabc")) == (true));
    Debug.Assert(SameChars(("dddddddabc"), ("abcd")) == (true));
    Debug.Assert(SameChars(("eabcd"), ("dddddddabc")) == (false));
    Debug.Assert(SameChars(("abcd"), ("dddddddabcf")) == (false));
    Debug.Assert(SameChars(("eabcdzzzz"), ("dddzzzzzzzddddabc")) == (false));
    Debug.Assert(SameChars(("aabb"), ("aaccc")) == (false));
    }

}
