using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a list of strings, where each string consists of only digits, return a list.
    // Each element i of the output should be "the number of odd elements in the
    // string i of the input." where all the i's should be replaced by the number
    // of odd digits in the i'th string of the input.
    // >>> odd_count(['1234567'])
    // ["the number of odd elements 4n the str4ng 4 of the 4nput."]
    // >>> odd_count(['3',"11111111"])
    // ["the number of odd elements 1n the str1ng 1 of the 1nput.",
    // "the number of odd elements 8n the str8ng 8 of the 8nput."]
    public static List<string> OddCount(List<string> lst) {
        List<string> result = new List<string>();
        for (int i = 0; i < lst.Count; i++) {
            int oddCount = 0;
            for (int j = 0; j < lst[i].Length; j++) {
                if (int.Parse(lst[i][j].ToString()) % 2 != 0) {
                    oddCount++;
                }
            }
            result.Add("the number of odd elements " + oddCount + "n the str" + oddCount + "g " + oddCount + " of the " + oddCount + "nput.");
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(OddCount((new List<string>(new string[]{(string)"1234567"}))).Equals((new List<string>(new string[]{(string)"the number of odd elements 4n the str4ng 4 of the 4nput."}))));
    Debug.Assert(OddCount((new List<string>(new string[]{(string)"3", (string)"11111111"}))).Equals((new List<string>(new string[]{(string)"the number of odd elements 1n the str1ng 1 of the 1nput.", (string)"the number of odd elements 8n the str8ng 8 of the 8nput."}))));
    Debug.Assert(OddCount((new List<string>(new string[]{(string)"271", (string)"137", (string)"314"}))).Equals((new List<string>(new string[]{(string)"the number of odd elements 2n the str2ng 2 of the 2nput.", (string)"the number of odd elements 3n the str3ng 3 of the 3nput.", (string)"the number of odd elements 2n the str2ng 2 of the 2nput."}))));
    }

}
