using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given the lengths of the three sides of a triangle. Return the area of
    // the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
    // Otherwise return -1
    // Three sides make a valid triangle when the sum of any two sides is greater 
    // than the third side.
    // Example:
    // triangle_area(3, 4, 5) == 6.00
    // triangle_area(1, 2, 10) == -1
    public static float TriangleArea(int a, int b, int c) {
        if (a + b <= c || a + c <= b || b + c <= a) {
            return -1;
        }
        else {
            return Math.Round((a + b + c) / 2f * (Math.Sqrt(Math.Pow(a, 2) + Math.Pow(b, 2) - Math.Pow(c, 2))), 2);
        }

    }
    public static void Main(string[] args) {
    Debug.Assert(TriangleArea((3), (4), (5)) == (6.0f));
    Debug.Assert(TriangleArea((1), (2), (10)) == (float)-1);
    Debug.Assert(TriangleArea((4), (8), (5)) == (8.18f));
    Debug.Assert(TriangleArea((2), (2), (2)) == (1.73f));
    Debug.Assert(TriangleArea((1), (2), (3)) == (float)-1);
    Debug.Assert(TriangleArea((10), (5), (7)) == (16.25f));
    Debug.Assert(TriangleArea((2), (6), (3)) == (float)-1);
    Debug.Assert(TriangleArea((1), (1), (1)) == (0.43f));
    Debug.Assert(TriangleArea((2), (2), (10)) == (float)-1);
    }

}
