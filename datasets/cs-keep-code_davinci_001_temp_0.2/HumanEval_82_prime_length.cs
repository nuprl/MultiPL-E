using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that takes a string and returns True if the string
    // length is a prime number or False otherwise
    // Examples
    // prime_length('Hello') == True
    // prime_length('abcdcba') == True
    // prime_length('kittens') == True
    // prime_length('orange') == False
    public static bool PrimeLength(string str) {
        if (str.Length == 0) {
            return false;
        }
        if (str.Length == 1) {
            return true;
        }
        int count = 0;
        for (int i = 0; i < str.Length; i++) {
            for (int j = i + 1; j < str.Length; j++) {
                if (str[i] == str[j]) {
                    count++;
                }
            }
        }
        if (count == 0) {
            return true;
        }
        return false;

    }
    public static void Main(string[] args) {
    Debug.Assert(PrimeLength(("Hello")) == (true));
    Debug.Assert(PrimeLength(("abcdcba")) == (true));
    Debug.Assert(PrimeLength(("kittens")) == (true));
    Debug.Assert(PrimeLength(("orange")) == (false));
    Debug.Assert(PrimeLength(("wow")) == (true));
    Debug.Assert(PrimeLength(("world")) == (true));
    Debug.Assert(PrimeLength(("MadaM")) == (true));
    Debug.Assert(PrimeLength(("Wow")) == (true));
    Debug.Assert(PrimeLength(("")) == (false));
    Debug.Assert(PrimeLength(("HI")) == (true));
    Debug.Assert(PrimeLength(("go")) == (true));
    Debug.Assert(PrimeLength(("gogo")) == (false));
    Debug.Assert(PrimeLength(("aaaaaaaaaaaaaaa")) == (false));
    Debug.Assert(PrimeLength(("Madam")) == (true));
    Debug.Assert(PrimeLength(("M")) == (false));
    Debug.Assert(PrimeLength(("0")) == (false));
    }

}
