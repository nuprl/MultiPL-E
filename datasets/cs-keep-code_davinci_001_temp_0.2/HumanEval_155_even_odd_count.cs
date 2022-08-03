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
    Debug.Assert(EvenOddCount((7)).Equals((Tuple.Create(0, 1))));
    Debug.Assert(EvenOddCount((-78)).Equals((Tuple.Create(1, 1))));
    Debug.Assert(EvenOddCount((3452)).Equals((Tuple.Create(2, 2))));
    Debug.Assert(EvenOddCount((346211)).Equals((Tuple.Create(3, 3))));
    Debug.Assert(EvenOddCount((-345821)).Equals((Tuple.Create(3, 3))));
    Debug.Assert(EvenOddCount((-2)).Equals((Tuple.Create(1, 0))));
    Debug.Assert(EvenOddCount((-45347)).Equals((Tuple.Create(2, 3))));
    Debug.Assert(EvenOddCount((0)).Equals((Tuple.Create(1, 0))));
    }

}
