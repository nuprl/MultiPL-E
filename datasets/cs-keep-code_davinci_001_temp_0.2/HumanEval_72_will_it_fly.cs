using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that returns True if the object q will fly, and False otherwise.
    // The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
    // Example:
    // will_it_fly([1, 2], 5) ➞ False 
    // # 1+2 is less than the maximum possible weight, but it's unbalanced.
    // will_it_fly([3, 2, 3], 1) ➞ False
    // # it's balanced, but 3+2+3 is more than the maximum possible weight.
    // will_it_fly([3, 2, 3], 9) ➞ True
    // # 3+2+3 is less than the maximum possible weight, and it's balanced.
    // will_it_fly([3], 5) ➞ True
    // # 3 is less than the maximum possible weight, and it's balanced.
    public static bool WillItFly(List<int> q, int w) {
        return q.Sum() <= w && q.Reverse().SequenceEqual(q);

    }
    public static void Main(string[] args) {
    Debug.Assert(WillItFly((new List<int>(new int[]{(int)3, (int)2, (int)3})), (9)) == (true));
    Debug.Assert(WillItFly((new List<int>(new int[]{(int)1, (int)2})), (5)) == (false));
    Debug.Assert(WillItFly((new List<int>(new int[]{(int)3})), (5)) == (true));
    Debug.Assert(WillItFly((new List<int>(new int[]{(int)3, (int)2, (int)3})), (1)) == (false));
    Debug.Assert(WillItFly((new List<int>(new int[]{(int)1, (int)2, (int)3})), (6)) == (false));
    Debug.Assert(WillItFly((new List<int>(new int[]{(int)5})), (5)) == (true));
    }

}
