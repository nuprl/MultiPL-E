using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given the lengths of the three sides of a triangle. Return True if the three
    // sides form a right-angled triangle, False otherwise.
    // A right-angled triangle is a triangle in which one angle is right angle or 
    // 90 degree.
    // Example:
    // right_angle_triangle(3, 4, 5) == True
    // right_angle_triangle(1, 2, 3) == False
    public static bool RightAngleTriangle(int a, int b, int c) {
        return (a * a + b * b == c * c);

    }
    public static void Main(string[] args) {
    Debug.Assert(RightAngleTriangle((3), (4), (5)) == (true));
    Debug.Assert(RightAngleTriangle((1), (2), (3)) == (false));
    Debug.Assert(RightAngleTriangle((10), (6), (8)) == (true));
    Debug.Assert(RightAngleTriangle((2), (2), (2)) == (false));
    Debug.Assert(RightAngleTriangle((7), (24), (25)) == (true));
    Debug.Assert(RightAngleTriangle((10), (5), (7)) == (false));
    Debug.Assert(RightAngleTriangle((5), (12), (13)) == (true));
    Debug.Assert(RightAngleTriangle((15), (8), (17)) == (true));
    Debug.Assert(RightAngleTriangle((48), (55), (73)) == (true));
    Debug.Assert(RightAngleTriangle((1), (1), (1)) == (false));
    Debug.Assert(RightAngleTriangle((2), (2), (10)) == (false));
    }

}
