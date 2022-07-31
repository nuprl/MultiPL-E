using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
    // >>> fizz_buzz(50)
    // 0
    // >>> fizz_buzz(78)
    // 2
    // >>> fizz_buzz(79)
    // 3
    public static int FizzBuzz(int n) {
        int count = 0;
        for (int i = 1; i < n; i++) {
            if (i % 11 == 0 || i % 13 == 0) {
                count++;
            }
        }
        return count;

    }
    public static void Main(string[] args) {
    Debug.Assert(FizzBuzz((50)) == (0));
    Debug.Assert(FizzBuzz((78)) == (2));
    Debug.Assert(FizzBuzz((79)) == (3));
    Debug.Assert(FizzBuzz((100)) == (3));
    Debug.Assert(FizzBuzz((200)) == (6));
    Debug.Assert(FizzBuzz((4000)) == (192));
    Debug.Assert(FizzBuzz((10000)) == (639));
    Debug.Assert(FizzBuzz((100000)) == (8026));
    }

}
