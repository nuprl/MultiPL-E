using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a positive integer, obtain its roman numeral equivalent as a string,
    // and return it in lowercase.
    // Restrictions: 1 <= num <= 1000
    // Examples:
    // >>> int_to_mini_roman(19) == 'xix'
    // >>> int_to_mini_roman(152) == 'clii'
    // >>> int_to_mini_roman(426) == 'cdxxvi'
    public static string IntToMiniRoman(int number) {
        string[] roman = new string[] { "i", "v", "x", "l", "c", "d", "m" };
        string[] digits = new string[] { "", "0", "00", "000", "01", "1", "10", "100", "1000" };
        string result = "";
        int i = 0;
        while (number > 0) {
            int digit = number % 10;
            number /= 10;
            if (digit > 0) {
                result = digits[digit] + roman[i] + result;
            }
            i++;
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(IntToMiniRoman((19)).Equals(("xix")));
    Debug.Assert(IntToMiniRoman((152)).Equals(("clii")));
    Debug.Assert(IntToMiniRoman((251)).Equals(("ccli")));
    Debug.Assert(IntToMiniRoman((426)).Equals(("cdxxvi")));
    Debug.Assert(IntToMiniRoman((500)).Equals(("d")));
    Debug.Assert(IntToMiniRoman((1)).Equals(("i")));
    Debug.Assert(IntToMiniRoman((4)).Equals(("iv")));
    Debug.Assert(IntToMiniRoman((43)).Equals(("xliii")));
    Debug.Assert(IntToMiniRoman((90)).Equals(("xc")));
    Debug.Assert(IntToMiniRoman((94)).Equals(("xciv")));
    Debug.Assert(IntToMiniRoman((532)).Equals(("dxxxii")));
    Debug.Assert(IntToMiniRoman((900)).Equals(("cm")));
    Debug.Assert(IntToMiniRoman((994)).Equals(("cmxciv")));
    Debug.Assert(IntToMiniRoman((1000)).Equals(("m")));
    }

}
