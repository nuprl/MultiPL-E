using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
    // >>> flip_case('Hello')
    // 'hELLO'
    public static string FlipCase(string str) {
        var result = new StringBuilder();
        foreach (var c in str) {
            if (char.IsUpper(c)) {
                result.Append(char.ToLower(c));
            } else {
                result.Append(char.ToUpper(c));
            }
        }
        return result.ToString();

    }
    public static void Main(string[] args) {
    Debug.Assert(FlipCase(("")).Equals(("")));
    Debug.Assert(FlipCase(("Hello!")).Equals(("hELLO!")));
    Debug.Assert(FlipCase(("These violent delights have violent ends")).Equals(("tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")));
    }

}
