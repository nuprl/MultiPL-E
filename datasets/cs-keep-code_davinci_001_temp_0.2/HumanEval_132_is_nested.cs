using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Create a function that takes a string as input which contains only square brackets.
    // The function should return True if and only if there is a valid subsequence of brackets 
    // where at least one bracket in the subsequence is nested.
    // is_nested('[[]]') ➞ True
    // is_nested('[]]]]]]][[[[[]') ➞ False
    // is_nested('[][]') ➞ False
    // is_nested('[]') ➞ False
    // is_nested('[[][]]') ➞ True
    // is_nested('[[]][[') ➞ True
    public static bool IsNested(string str) {
        return str.Contains("[]") || str.Contains("[[]]");

    }
    public static void Main(string[] args) {
    Debug.Assert(IsNested(("[[]]")) == (true));
    Debug.Assert(IsNested(("[]]]]]]][[[[[]")) == (false));
    Debug.Assert(IsNested(("[][]")) == (false));
    Debug.Assert(IsNested(("[]")) == (false));
    Debug.Assert(IsNested(("[[[[]]]]")) == (true));
    Debug.Assert(IsNested(("[]]]]]]]]]]")) == (false));
    Debug.Assert(IsNested(("[][][[]]")) == (true));
    Debug.Assert(IsNested(("[[]")) == (false));
    Debug.Assert(IsNested(("[]]")) == (false));
    Debug.Assert(IsNested(("[[]][[")) == (true));
    Debug.Assert(IsNested(("[[][]]")) == (true));
    Debug.Assert(IsNested(("")) == (false));
    Debug.Assert(IsNested(("[[[[[[[[")) == (false));
    Debug.Assert(IsNested(("]]]]]]]]")) == (false));
    }

}
