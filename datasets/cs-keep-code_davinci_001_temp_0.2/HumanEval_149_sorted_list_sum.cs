using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that accepts a list of strings as a parameter,
    // deletes the strings that have odd lengths from it,
    // and returns the resulted list with a sorted order,
    // The list is always a list of strings and never an array of numbers,
    // and it may contain duplicates.
    // The order of the list should be ascending by length of each word, and you
    // should return the list sorted by that rule.
    // If two words have the same length, sort the list alphabetically.
    // The function should return a list of strings in sorted order.
    // You may assume that all words will have the same length.
    // For example:
    // assert list_sort(["aa", "a", "aaa"]) => ["aa"]
    // assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
    public static List<string> SortedListSum(List<string> lst) {
        List<string> result = new List<string>();
        foreach (string s in lst) {
            if (s.Length % 2 == 0) {
                result.Add(s);
            }
        }
        result.Sort();
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(SortedListSum((new List<string>(new string[]{(string)"aa", (string)"a", (string)"aaa"}))).Equals((new List<string>(new string[]{(string)"aa"}))));
    Debug.Assert(SortedListSum((new List<string>(new string[]{(string)"school", (string)"AI", (string)"asdf", (string)"b"}))).Equals((new List<string>(new string[]{(string)"AI", (string)"asdf", (string)"school"}))));
    Debug.Assert(SortedListSum((new List<string>(new string[]{(string)"d", (string)"b", (string)"c", (string)"a"}))).Equals((new List<string>())));
    Debug.Assert(SortedListSum((new List<string>(new string[]{(string)"d", (string)"dcba", (string)"abcd", (string)"a"}))).Equals((new List<string>(new string[]{(string)"abcd", (string)"dcba"}))));
    Debug.Assert(SortedListSum((new List<string>(new string[]{(string)"AI", (string)"ai", (string)"au"}))).Equals((new List<string>(new string[]{(string)"AI", (string)"ai", (string)"au"}))));
    Debug.Assert(SortedListSum((new List<string>(new string[]{(string)"a", (string)"b", (string)"b", (string)"c", (string)"c", (string)"a"}))).Equals((new List<string>())));
    Debug.Assert(SortedListSum((new List<string>(new string[]{(string)"aaaa", (string)"bbbb", (string)"dd", (string)"cc"}))).Equals((new List<string>(new string[]{(string)"cc", (string)"dd", (string)"aaaa", (string)"bbbb"}))));
    }

}
