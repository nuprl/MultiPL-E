using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You will be given a string of words separated by commas or spaces. Your task is
    // to split the string into words and return an array of the words.
    // For example:
    // words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
    // words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
    public static List<string> WordsString(string s) {
        return s.Split(new char[] { ' ', ',' }, StringSplitOptions.RemoveEmptyEntries).ToList();

    }
    public static void Main(string[] args) {
    Debug.Assert(WordsString(("Hi, my name is John")).Equals((new List<string>(new string[]{(string)"Hi", (string)"my", (string)"name", (string)"is", (string)"John"}))));
    Debug.Assert(WordsString(("One, two, three, four, five, six")).Equals((new List<string>(new string[]{(string)"One", (string)"two", (string)"three", (string)"four", (string)"five", (string)"six"}))));
    Debug.Assert(WordsString(("Hi, my name")).Equals((new List<string>(new string[]{(string)"Hi", (string)"my", (string)"name"}))));
    Debug.Assert(WordsString(("One,, two, three, four, five, six,")).Equals((new List<string>(new string[]{(string)"One", (string)"two", (string)"three", (string)"four", (string)"five", (string)"six"}))));
    Debug.Assert(WordsString(("")).Equals((new List<string>())));
    Debug.Assert(WordsString(("ahmed     , gamal")).Equals((new List<string>(new string[]{(string)"ahmed", (string)"gamal"}))));
    }

}
