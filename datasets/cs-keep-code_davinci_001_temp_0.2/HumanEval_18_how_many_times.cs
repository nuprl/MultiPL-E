using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Find how many times a given substring can be found in the original string. Count overlaping cases.
    // >>> how_many_times('', 'a')
    // 0
    // >>> how_many_times('aaa', 'a')
    // 3
    // >>> how_many_times('aaaa', 'aa')
    // 3
    public static int HowManyTimes(string str, string substring) {
        int count = 0;
        int start = 0;
        while (start < str.Length) {
            int pos = str.IndexOf(substring, start);
            if (pos == -1)
                break;
            count++;
            start = pos + 1;
        }
        return count;

    }
    public static void Main(string[] args) {
    Debug.Assert(HowManyTimes((""), ("x")) == (0));
    Debug.Assert(HowManyTimes(("xyxyxyx"), ("x")) == (4));
    Debug.Assert(HowManyTimes(("cacacacac"), ("cac")) == (4));
    Debug.Assert(HowManyTimes(("john doe"), ("john")) == (1));
    }

}
