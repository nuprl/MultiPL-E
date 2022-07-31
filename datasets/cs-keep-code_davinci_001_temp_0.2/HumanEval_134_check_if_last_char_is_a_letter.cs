using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Create a function that returns True if the last character
    // of a given string is an alphabetical character and is not
    // a part of a word, and False otherwise.
    // Note: "word" is a group of characters separated by space.
    // Examples:
    // check_if_last_char_is_a_letter("apple pie") ➞ False
    // check_if_last_char_is_a_letter("apple pi e") ➞ True
    // check_if_last_char_is_a_letter("apple pi e ") ➞ False
    // check_if_last_char_is_a_letter("") ➞ False
    public static bool CheckIfLastCharIsALetter(string txt) {
        if (txt.Length == 0) {
            return false;
        }
        if (txt.Last() >= 'a' && txt.Last() <= 'z') {
            return true;
        }
        if (txt.Last() >= 'A' && txt.Last() <= 'Z') {
            return true;
        }
        return false;

    }
    public static void Main(string[] args) {
    Debug.Assert(CheckIfLastCharIsALetter(("apple")) == (false));
    Debug.Assert(CheckIfLastCharIsALetter(("apple pi e")) == (true));
    Debug.Assert(CheckIfLastCharIsALetter(("eeeee")) == (false));
    Debug.Assert(CheckIfLastCharIsALetter(("A")) == (true));
    Debug.Assert(CheckIfLastCharIsALetter(("Pumpkin pie ")) == (false));
    Debug.Assert(CheckIfLastCharIsALetter(("Pumpkin pie 1")) == (false));
    Debug.Assert(CheckIfLastCharIsALetter(("")) == (false));
    Debug.Assert(CheckIfLastCharIsALetter(("eeeee e ")) == (false));
    Debug.Assert(CheckIfLastCharIsALetter(("apple pie")) == (false));
    Debug.Assert(CheckIfLastCharIsALetter(("apple pi e ")) == (false));
    }

}
