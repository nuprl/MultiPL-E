using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // A simple program which should return the value of x if n is 
    // a prime number and should return the value of y otherwise.
    // Examples:
    // for x_or_y(7, 34, 12) == 34
    // for x_or_y(15, 8, 5) == 5
    public static int XOrY(int n, int x, int y) {
        if (n % 2 == 0) {
            return y;
        }
        else {
            return x;
        }

    }
    public static void Main(string[] args) {
    Debug.Assert(XOrY((7), (34), (12)) == (34));
    Debug.Assert(XOrY((15), (8), (5)) == (5));
    Debug.Assert(XOrY((3), (33), (5212)) == (33));
    Debug.Assert(XOrY((1259), (3), (52)) == (3));
    Debug.Assert(XOrY((7919), (-1), (12)) == (-1));
    Debug.Assert(XOrY((3609), (1245), (583)) == (583));
    Debug.Assert(XOrY((91), (56), (129)) == (129));
    Debug.Assert(XOrY((6), (34), (1234)) == (1234));
    Debug.Assert(XOrY((1), (2), (0)) == (0));
    Debug.Assert(XOrY((2), (2), (0)) == (2));
    }

}
