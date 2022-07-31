using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a positive floating point number, it can be decomposed into
    // and integer part (largest integer smaller than given number) and decimals
    // (leftover part always smaller than 1).
    // Return the decimal part of the number.
    // >>> truncate_number(3.5)
    // 0.5
    public static float TruncateNumber(float number) {
        return number - (int)number;

    }
    public static void Main(string[] args) {
    Debug.Assert(TruncateNumber((3.5f)) == (0.5f));
    Debug.Assert(TruncateNumber((1.25f)) == (0.25f));
    Debug.Assert(TruncateNumber((123.0f)) == (0.0f));
    }

}
