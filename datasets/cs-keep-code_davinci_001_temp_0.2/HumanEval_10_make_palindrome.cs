using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Find the shortest palindrome that begins with a supplied string.
    // Algorithm idea is simple:
    // - Find the longest postfix of supplied string that is a palindrome.
    // - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    // >>> make_palindrome('')
    // ''
    // >>> make_palindrome('cat')
    // 'catac'
    // >>> make_palindrome('cata')
    // 'catac'
    public static string MakePalindrome(string str) {
        if (str.Length == 0) return "";
        int i = str.Length - 1;
        while (i >= 0 && str[i] == str[str.Length - 1]) {
            i--;
        }
        return str + str.Substring(0, i + 1).Reverse();

    }
    public static void Main(string[] args) {
    Debug.Assert(MakePalindrome(("")).Equals(("")));
    Debug.Assert(MakePalindrome(("x")).Equals(("x")));
    Debug.Assert(MakePalindrome(("xyz")).Equals(("xyzyx")));
    Debug.Assert(MakePalindrome(("xyx")).Equals(("xyx")));
    Debug.Assert(MakePalindrome(("jerry")).Equals(("jerryrrej")));
    }

}
