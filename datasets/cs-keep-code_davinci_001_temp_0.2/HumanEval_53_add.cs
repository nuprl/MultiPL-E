using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    public static int Add(int x, int y) {
        return x + y;

    }
    public static void Main(string[] args) {
    Debug.Assert(Add((0), (1)) == (1));
    Debug.Assert(Add((1), (0)) == (1));
    Debug.Assert(Add((2), (3)) == (5));
    Debug.Assert(Add((5), (7)) == (12));
    Debug.Assert(Add((7), (5)) == (12));
    }

}
