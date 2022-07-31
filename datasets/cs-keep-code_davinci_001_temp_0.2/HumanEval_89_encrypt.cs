using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Create a function encrypt that takes a string as an argument and
    // returns a string encrypted with the alphabet being rotated. 
    // The alphabet should be rotated in a manner such that the letters 
    // shift down by two multiplied to two places.
    // For example:
    // encrypt('hi') returns 'lm'
    // encrypt('asdfghjkl') returns 'ewhjklnop'
    // encrypt('gf') returns 'kj'
    // encrypt('et') returns 'ix'
    public static string Encrypt(string s) {
        string alphabet = "abcdefghijklmnopqrstuvwxyz";
        string encrypted = "";
        for (int i = 0; i < s.Length; i++) {
            int index = alphabet.IndexOf(s[i]);
            if (index + 2 > 25) {
                encrypted += alphabet[index + 2 - 26];
            } else {
                encrypted += alphabet[index + 2];
            }
        }
        return encrypted;

    }
    public static void Main(string[] args) {
    Debug.Assert(Encrypt(("hi")).Equals(("lm")));
    Debug.Assert(Encrypt(("asdfghjkl")).Equals(("ewhjklnop")));
    Debug.Assert(Encrypt(("gf")).Equals(("kj")));
    Debug.Assert(Encrypt(("et")).Equals(("ix")));
    Debug.Assert(Encrypt(("faewfawefaewg")).Equals(("jeiajeaijeiak")));
    Debug.Assert(Encrypt(("hellomyfriend")).Equals(("lippsqcjvmirh")));
    Debug.Assert(Encrypt(("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh")).Equals(("hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl")));
    Debug.Assert(Encrypt(("a")).Equals(("e")));
    }

}
