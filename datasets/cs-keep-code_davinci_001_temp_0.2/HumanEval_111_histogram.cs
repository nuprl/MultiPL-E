using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a string representing a space separated lowercase letters, return a dictionary
    // of the letter with the most repetition and containing the corresponding count.
    // If several letters have the same occurrence, return all of them.
    // Example:
    // histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
    // histogram('a b b a') == {'a': 2, 'b': 2}
    // histogram('a b c a b') == {'a': 2, 'b': 2}
    // histogram('b b b b a') == {'b': 4}
    // histogram('') == {}
    public static Dictionary<string,int> Histogram(string test) {
        Dictionary<string,int> result = new Dictionary<string,int>();
        string[] words = test.Split(' ');
        foreach (string word in words) {
            if (result.ContainsKey(word)) {
                result[word]++;
            } else {
                result.Add(word, 1);
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Histogram(("a b b a")).Equals((new Dictionary<string,int>(){{"a", 2}, {"b", 2}})));
    Debug.Assert(Histogram(("a b c a b")).Equals((new Dictionary<string,int>(){{"a", 2}, {"b", 2}})));
    Debug.Assert(Histogram(("a b c d g")).Equals((new Dictionary<string,int>(){{"a", 1}, {"b", 1}, {"c", 1}, {"d", 1}, {"g", 1}})));
    Debug.Assert(Histogram(("r t g")).Equals((new Dictionary<string,int>(){{"r", 1}, {"t", 1}, {"g", 1}})));
    Debug.Assert(Histogram(("b b b b a")).Equals((new Dictionary<string,int>(){{"b", 4}})));
    Debug.Assert(Histogram(("r t g")).Equals((new Dictionary<string,int>(){{"r", 1}, {"t", 1}, {"g", 1}})));
    Debug.Assert(Histogram(("")).Equals((new Dictionary<string,int>())));
    Debug.Assert(Histogram(("a")).Equals((new Dictionary<string,int>(){{"a", 1}})));
    }

}
