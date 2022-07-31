using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Create a function that takes 3 numbers.
    // Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
    // Returns false in any other cases.
    // Examples
    // any_int(5, 2, 7) ➞ True
    // any_int(3, 2, 2) ➞ False
    // any_int(3, -2, 1) ➞ True
    // any_int(3.6, -2.2, 2) ➞ False
    public static bool AnyInt(float x, float y, float z) {
        return (x == y + z || y == x + z || z == x + y) && (x == Math.Floor(x) && y == Math.Floor(y) && z == Math.Floor(z));

    }
    public static void Main(string[] args) {
    Debug.Assert(AnyInt((float)2, (float)3, (float)1) == (true));
    Debug.Assert(AnyInt((2.5f), (float)2, (float)3) == (false));
    Debug.Assert(AnyInt((1.5f), (float)5, (3.5f)) == (false));
    Debug.Assert(AnyInt((float)2, (float)6, (float)2) == (false));
    Debug.Assert(AnyInt((float)4, (float)2, (float)2) == (true));
    Debug.Assert(AnyInt((2.2f), (2.2f), (2.2f)) == (false));
    Debug.Assert(AnyInt((float)-4, (float)6, (float)2) == (true));
    Debug.Assert(AnyInt((float)2, (float)1, (float)1) == (true));
    Debug.Assert(AnyInt((float)3, (float)4, (float)7) == (true));
    Debug.Assert(AnyInt((3.0f), (float)4, (float)7) == (false));
    }

}
