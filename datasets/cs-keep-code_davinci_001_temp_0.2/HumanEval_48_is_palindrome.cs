using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Checks if given string is a palindrome
    // >>> is_palindrome('')
    // True
    // >>> is_palindrome('aba')
    // True
    // >>> is_palindrome('aaaaa')
    // True
    // >>> is_palindrome('zbcd')
    // False
    public static bool IsPalindrome(string text) {
        if (text.Length == 0) return true;
        for (int i = 0; i < text.Length / 2; i++) {
            if (text[i] != text[text.Length - 1 - i]) return false;
        }
        return true;

    }
    public static void Main(string[] args) {
    Debug.Assert(IsPalindrome(("")) == (true));
    Debug.Assert(IsPalindrome(("aba")) == (true));
    Debug.Assert(IsPalindrome(("aaaaa")) == (true));
    Debug.Assert(IsPalindrome(("zbcd")) == (false));
    Debug.Assert(IsPalindrome(("xywyx")) == (true));
    Debug.Assert(IsPalindrome(("xywyz")) == (false));
    Debug.Assert(IsPalindrome(("xywzx")) == (false));
    }

}
