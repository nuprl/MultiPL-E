using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given a string s.
    // if s[i] is a letter, reverse its case from lower to upper or vise versa, 
    // otherwise keep it as it is.
    // If the string contains no letters, reverse the string.
    // The function should return the resulted string.
    // Examples
    // solve("1234") = "4321"
    // solve("ab") = "AB"
    // solve("#a@C") = "#A@c"
    public static string Solve(string s) {
        // Write your code here
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.Length; i++) {
            if (char.IsLetter(s[i])) {
                if (char.IsLower(s[i])) {
                    sb.Append(char.ToUpper(s[i]));
                } else {
                    sb.Append(char.ToLower(s[i]));
                }
            } else {
                sb.Append(s[i]);
            }
        }
        return sb.ToString();

    }
    public static void Main(string[] args) {
    Debug.Assert(Solve(("AsDf")).Equals(("aSdF")));
    Debug.Assert(Solve(("1234")).Equals(("4321")));
    Debug.Assert(Solve(("ab")).Equals(("AB")));
    Debug.Assert(Solve(("#a@C")).Equals(("#A@c")));
    Debug.Assert(Solve(("#AsdfW^45")).Equals(("#aSDFw^45")));
    Debug.Assert(Solve(("#6@2")).Equals(("2@6#")));
    Debug.Assert(Solve(("#$a^D")).Equals(("#$A^d")));
    Debug.Assert(Solve(("#ccc")).Equals(("#CCC")));
    }

}
