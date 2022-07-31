using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
    // separate those group into separate strings and return the list of those.
    // Separate groups are balanced (each open brace is properly closed) and not nested within each other
    // Ignore any spaces in the input string.
    // >>> separate_paren_groups('( ) (( )) (( )( ))')
    // ['()', '(())', '(()())']
    public static List<string> SeparateParenGroups(string paren_string) {
        List<string> result = new List<string>();
        int start = 0;
        while (start < paren_string.Length) {
            int end = start;
            while (end < paren_string.Length && paren_string[end] != '(') {
                end++;
            }
            if (end == paren_string.Length) {
                break;
            }
            int level = 0;
            while (end < paren_string.Length) {
                if (paren_string[end] == '(') {
                    level++;
                } else if (paren_string[end] == ')') {
                    level--;
                }
                if (level == 0) {
                    break;
                }
                end++;
            }
            result.Add(paren_string.Substring(start, end - start + 1));
            start = end + 1;
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(SeparateParenGroups(("(()()) ((())) () ((())()())")).Equals((new List<string>(new string[]{(string)"(()())", (string)"((()))", (string)"()", (string)"((())()())"}))));
    Debug.Assert(SeparateParenGroups(("() (()) ((())) (((())))")).Equals((new List<string>(new string[]{(string)"()", (string)"(())", (string)"((()))", (string)"(((())))"}))));
    Debug.Assert(SeparateParenGroups(("(()(())((())))")).Equals((new List<string>(new string[]{(string)"(()(())((())))"}))));
    Debug.Assert(SeparateParenGroups(("( ) (( )) (( )( ))")).Equals((new List<string>(new string[]{(string)"()", (string)"(())", (string)"(()())"}))));
    }

}
