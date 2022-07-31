using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // remove_vowels is a function that takes string and returns string without vowels.
    // >>> remove_vowels('')
    // ''
    // >>> remove_vowels('abcdef')
    // 'bcdf'
    // >>> remove_vowels('aaaaa')
    // ''
    // >>> remove_vowels('aaBAA')
    // 'B'
    // >>> remove_vowels('zbcd')
    // 'zbcd'
    public static string RemoveVowels(string text) {
        return new string(text.Where(c => !new[] {'a', 'e', 'i', 'o', 'u'}.Contains(c)).ToArray());

    }
    public static void Main(string[] args) {
    Debug.Assert(RemoveVowels(("")).Equals(("")));
    Debug.Assert(RemoveVowels(("abcdef\nghijklm")).Equals(("bcdf\nghjklm")));
    Debug.Assert(RemoveVowels(("fedcba")).Equals(("fdcb")));
    Debug.Assert(RemoveVowels(("eeeee")).Equals(("")));
    Debug.Assert(RemoveVowels(("acBAA")).Equals(("cB")));
    Debug.Assert(RemoveVowels(("EcBOO")).Equals(("cB")));
    Debug.Assert(RemoveVowels(("ybcd")).Equals(("ybcd")));
    }

}
