using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given length of a side and high return area for a triangle.
    // >>> triangle_area(5, 3)
    // 7.5
    public static float TriangleArea(int a, int h) {
        return (float)a * h / 2;

    }
    public static void Main(string[] args) {
    Debug.Assert(TriangleArea((5), (3)) == (7.5f));
    Debug.Assert(TriangleArea((2), (2)) == (2.0f));
    Debug.Assert(TriangleArea((10), (8)) == (40.0f));
    }

}
