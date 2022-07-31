using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    // For each of the group, output the deepest level of nesting of parentheses.
    // E.g. (()()) has maximum two levels of nesting while ((())) has three.
    // >>> parse_nested_parens('(()()) ((())) () ((())()())')
    // [2, 3, 1, 3]
    public static List<int> ParseNestedParens(string paren_string) {
        // TODO: Implement me
        List<int> result = new List<int>();
        int max = 0;
        int count = 0;
        for (int i = 0; i < paren_string.Length; i++) {
            if (paren_string[i] == '(') {
                count++;
            } else if (paren_string[i] == ')') {
                count--;
            }
            if (count > max) {
                max = count;
            }
        }
        result.Add(max);
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(ParseNestedParens(("(()()) ((())) () ((())()())")).Equals((new List<int>(new int[]{(int)2, (int)3, (int)1, (int)3}))));
    Debug.Assert(ParseNestedParens(("() (()) ((())) (((())))")).Equals((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4}))));
    Debug.Assert(ParseNestedParens(("(()(())((())))")).Equals((new List<int>(new int[]{(int)4}))));
    }

}
