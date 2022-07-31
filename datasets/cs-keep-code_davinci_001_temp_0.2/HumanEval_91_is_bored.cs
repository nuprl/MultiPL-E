using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You'll be given a string of words, and your task is to count the number
    // of boredoms. A boredom is a sentence that starts with the word "I".
    // Sentences are delimited by '.', '?' or '!'.
    // For example:
    // >>> is_bored("Hello world")
    // 0
    // >>> is_bored("The sky is blue. The sun is shining. I love this weather")
    // 1
    public static int IsBored(string S) {
        int count = 0;
        string[] words = S.Split('.', '?', '!');
        foreach (string word in words) {
            if (word.Length > 0 && word[0] == 'I') {
                count++;
            }
        }
        return count;

    }
    public static void Main(string[] args) {
    Debug.Assert(IsBored(("Hello world")) == (0));
    Debug.Assert(IsBored(("Is the sky blue?")) == (0));
    Debug.Assert(IsBored(("I love It !")) == (1));
    Debug.Assert(IsBored(("bIt")) == (0));
    Debug.Assert(IsBored(("I feel good today. I will be productive. will kill It")) == (2));
    Debug.Assert(IsBored(("You and I are going for a walk")) == (0));
    }

}
