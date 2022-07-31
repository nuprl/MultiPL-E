using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // brackets is a string of "(" and ")".
    // return True if every opening bracket has a corresponding closing bracket.
    // >>> correct_bracketing("(")
    // False
    // >>> correct_bracketing("()")
    // True
    // >>> correct_bracketing("(()())")
    // True
    // >>> correct_bracketing(")(()")
    // False
    public static bool CorrectBracketing(string brackets) {
        int count = 0;
        foreach (char c in brackets) {
            if (c == '(') {
                count++;
            } else if (c == ')') {
                count--;
            }
            if (count < 0) {
                return false;
            }
        }
        return count == 0;

    }
    public static void Main(string[] args) {
    Debug.Assert(CorrectBracketing(("()")) == (true));
    Debug.Assert(CorrectBracketing(("(()())")) == (true));
    Debug.Assert(CorrectBracketing(("()()(()())()")) == (true));
    Debug.Assert(CorrectBracketing(("()()((()()())())(()()(()))")) == (true));
    Debug.Assert(CorrectBracketing(("((()())))")) == (false));
    Debug.Assert(CorrectBracketing((")(()")) == (false));
    Debug.Assert(CorrectBracketing(("(")) == (false));
    Debug.Assert(CorrectBracketing(("((((")) == (false));
    Debug.Assert(CorrectBracketing((")")) == (false));
    Debug.Assert(CorrectBracketing(("(()")) == (false));
    Debug.Assert(CorrectBracketing(("()()(()())())(()")) == (false));
    Debug.Assert(CorrectBracketing(("()()(()())()))()")) == (false));
    }

}
