using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that accepts two lists of strings and returns the list that has 
    // total number of chars in the all strings of the list less than the other list.
    // if the two lists have the same number of chars, return the first list.
    // Examples
    // total_match([], []) ➞ []
    // total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
    // total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
    // total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
    // total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
    public static List<string> TotalMatch(List<string> lst1, List<string> lst2) {
        int len1 = lst1.Sum(x => x.Length);
        int len2 = lst2.Sum(x => x.Length);
        if (len1 < len2) {
            return lst1;
        } else if (len1 > len2) {
            return lst2;
        } else {
            return lst1;
        }

    }
    public static void Main(string[] args) {
    Debug.Assert(TotalMatch((new List<string>()), (new List<string>())).Equals((new List<string>())));
    Debug.Assert(TotalMatch((new List<string>(new string[]{(string)"hi", (string)"admin"})), (new List<string>(new string[]{(string)"hi", (string)"hi"}))).Equals((new List<string>(new string[]{(string)"hi", (string)"hi"}))));
    Debug.Assert(TotalMatch((new List<string>(new string[]{(string)"hi", (string)"admin"})), (new List<string>(new string[]{(string)"hi", (string)"hi", (string)"admin", (string)"project"}))).Equals((new List<string>(new string[]{(string)"hi", (string)"admin"}))));
    Debug.Assert(TotalMatch((new List<string>(new string[]{(string)"4"})), (new List<string>(new string[]{(string)"1", (string)"2", (string)"3", (string)"4", (string)"5"}))).Equals((new List<string>(new string[]{(string)"4"}))));
    Debug.Assert(TotalMatch((new List<string>(new string[]{(string)"hi", (string)"admin"})), (new List<string>(new string[]{(string)"hI", (string)"Hi"}))).Equals((new List<string>(new string[]{(string)"hI", (string)"Hi"}))));
    Debug.Assert(TotalMatch((new List<string>(new string[]{(string)"hi", (string)"admin"})), (new List<string>(new string[]{(string)"hI", (string)"hi", (string)"hi"}))).Equals((new List<string>(new string[]{(string)"hI", (string)"hi", (string)"hi"}))));
    Debug.Assert(TotalMatch((new List<string>(new string[]{(string)"hi", (string)"admin"})), (new List<string>(new string[]{(string)"hI", (string)"hi", (string)"hii"}))).Equals((new List<string>(new string[]{(string)"hi", (string)"admin"}))));
    Debug.Assert(TotalMatch((new List<string>()), (new List<string>(new string[]{(string)"this"}))).Equals((new List<string>())));
    Debug.Assert(TotalMatch((new List<string>(new string[]{(string)"this"})), (new List<string>())).Equals((new List<string>())));
    }

}
