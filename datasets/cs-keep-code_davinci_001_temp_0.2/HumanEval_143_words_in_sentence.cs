using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given a string representing a sentence,
    // the sentence contains some words separated by a space,
    // and you have to return a string that contains the words from the original sentence,
    // whose lengths are prime numbers,
    // the order of the words in the new string should be the same as the original one.
    // Example 1:
    // Input: sentence = "This is a test"
    // Output: "is"
    // Example 2:
    // Input: sentence = "lets go for swimming"
    // Output: "go for"
    // Constraints:
    // * 1 <= len(sentence) <= 100
    // * sentence contains only letters
    public static string WordsInSentence(string sentence) {
        var words = sentence.Split(' ');
        var result = new List<string>();
        foreach (var word in words) {
            if (IsPrime(word.Length)) {
                result.Add(word);
            }
        }
        return string.Join(" ", result);

    }
    public static void Main(string[] args) {
    Debug.Assert(WordsInSentence(("This is a test")).Equals(("is")));
    Debug.Assert(WordsInSentence(("lets go for swimming")).Equals(("go for")));
    Debug.Assert(WordsInSentence(("there is no place available here")).Equals(("there is no place")));
    Debug.Assert(WordsInSentence(("Hi I am Hussein")).Equals(("Hi am Hussein")));
    Debug.Assert(WordsInSentence(("go for it")).Equals(("go for it")));
    Debug.Assert(WordsInSentence(("here")).Equals(("")));
    Debug.Assert(WordsInSentence(("here is")).Equals(("is")));
    }

}
