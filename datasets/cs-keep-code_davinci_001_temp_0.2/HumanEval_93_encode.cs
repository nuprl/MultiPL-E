using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that takes a message, and encodes in such a 
    // way that it swaps case of all letters, replaces all vowels in 
    // the message with the letter that appears 2 places ahead of that 
    // vowel in the english alphabet. 
    // Assume only letters. 
    // Examples:
    // >>> encode('test')
    // 'TGST'
    // >>> encode('This is a message')
    // 'tHKS KS C MGSSCGG'
    public static string Encode(string message) {
        string result = "";
        for (int i = 0; i < message.Length; i++) {
            if (char.IsLetter(message[i])) {
                if (char.IsUpper(message[i])) {
                    result += char.ToUpper(message[i]);
                } else {
                    result += char.ToLower(message[i]);
                }
            } else {
                result += message[i];
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Encode(("TEST")).Equals(("tgst")));
    Debug.Assert(Encode(("Mudasir")).Equals(("mWDCSKR")));
    Debug.Assert(Encode(("YES")).Equals(("ygs")));
    Debug.Assert(Encode(("This is a message")).Equals(("tHKS KS C MGSSCGG")));
    Debug.Assert(Encode(("I DoNt KnOw WhAt tO WrItE")).Equals(("k dQnT kNqW wHcT Tq wRkTg")));
    }

}
