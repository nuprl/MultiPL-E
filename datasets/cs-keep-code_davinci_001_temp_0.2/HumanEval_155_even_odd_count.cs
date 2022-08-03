using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given an integer. return a tuple that has the number of even and odd digits respectively.
    // Example:
    // even_odd_count(-12) ==> (1, 1)
    // even_odd_count(123) ==> (1, 2)
    public static Tuple<int, int> EvenOddCount(int num) {
        int even = 0;
        int odd = 0;
        while (num > 0) {
            int digit = num % 10;
            if (digit % 2 == 0) {
                even++;
            } else {
                odd++;
            }
            num /= 10;
        }
        return new Tuple<int, int>(even, odd);

    }
    public static void Main(string[] args) {
    Debug.Assert(EvenOddCount((7)).Equals((new Tuple<int, int>(new int[]{(int)0, (int)1}))));
    Debug.Assert(EvenOddCount((-78)).Equals((new Tuple<int, int>(new int[]{(int)1, (int)1}))));
    Debug.Assert(EvenOddCount((3452)).Equals((new Tuple<int, int>(new int[]{(int)2, (int)2}))));
    Debug.Assert(EvenOddCount((346211)).Equals((new Tuple<int, int>(new int[]{(int)3, (int)3}))));
    Debug.Assert(EvenOddCount((-345821)).Equals((new Tuple<int, int>(new int[]{(int)3, (int)3}))));
    Debug.Assert(EvenOddCount((-2)).Equals((new Tuple<int, int>(new int[]{(int)1, (int)0}))));
    Debug.Assert(EvenOddCount((-45347)).Equals((new Tuple<int, int>(new int[]{(int)2, (int)3}))));
    Debug.Assert(EvenOddCount((0)).Equals((new Tuple<int, int>(new int[]{(int)1, (int)0}))));
    }

}
