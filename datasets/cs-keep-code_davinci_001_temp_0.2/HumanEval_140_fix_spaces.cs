using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a string text, replace all spaces in it with underscores, 
    // and if a string has more than 2 consecutive spaces, 
    // then replace all consecutive spaces with - 
    // fix_spaces("Example") == "Example"
    // fix_spaces("Example 1") == "Example_1"
    // fix_spaces(" Example 2") == "_Example_2"
    // fix_spaces(" Example   3") == "_Example-3"
    public static string FixSpaces(string text) {
        string result = "";
        int count = 0;
        for (int i = 0; i < text.Length; i++) {
            if (text[i] == ' ') {
                count++;
                if (count == 2) {
                    result += '-';
                    count = 0;
                }
                else {
                    result += '_';
                }
            }
            else {
                result += text[i];
                count = 0;
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(FixSpaces(("Example")).Equals(("Example")));
    Debug.Assert(FixSpaces(("Mudasir Hanif ")).Equals(("Mudasir_Hanif_")));
    Debug.Assert(FixSpaces(("Yellow Yellow  Dirty  Fellow")).Equals(("Yellow_Yellow__Dirty__Fellow")));
    Debug.Assert(FixSpaces(("Exa   mple")).Equals(("Exa-mple")));
    Debug.Assert(FixSpaces(("   Exa 1 2 2 mple")).Equals(("-Exa_1_2_2_mple")));
    }

}
