using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Check if in given list of numbers, are any two numbers closer to each other than
    // given threshold.
    // >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
    // False
    // >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
    // True
    public static bool HasCloseElements(List<float> numbers, float threshold) {
        // TODO: Implement this function.
        // Use System.Numerics.Vector class to compare the distance between two numbers.
        // For example, Vector.Subtract(a, b) returns a - b.
        // You can use System.Numerics.Vector.LengthSquared() to get the squared length of a vector.
        // You can use System.Numerics.Vector.Length() to get the length of a vector.
        // You can use System.Numerics.Vector.Normalize() to get the unit vector of a vector.
        // You can use System.Numerics.Vector.DotProduct() to get the dot product of two vectors.
        // You can use System.Numerics.Vector.CrossProduct() to get the cross product of two vectors.
        // You can use System.Numerics.Vector.AngleBetween() to get the angle between two vectors.
        // You can use System.Numerics.Vector.AngleTo() to get the angle to a vector.
        // You can use System.Numerics.Vector.AngleTo(unit) to get the angle to a unit vector.
        // You can use System.Numerics.Vector.AngleBetween(unit) to get the angle between two unit vectors.
        // You can use System.Numerics.Vector.AngleBetween(unit1, unit2) to get the angle between two unit vectors.
        // You can use System.Numerics.Vector.AngleBetween(unit1, unit2, out angle) to get the angle between two unit vectors.
        // You can use System.Numerics.Vector.AngleBetween(unit1, unit2, out angle, out axis) to get the angle between two unit vectors.
        // You can use System.Numerics.Vector.AngleBetween(unit1, unit2, out angle, out axis, out axis1) to get the angle between two unit vectors.
        // You can use System.Numerics.Vector.AngleBetween(unit1, unit2, out angle, out axis, out axis1, out axis2) to get the angle between two unit vectors.
        // You can use System.Numerics

    }
    public static void Main(string[] args) {
    Debug.Assert(HasCloseElements((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)3.9f, (float)4.0f, (float)5.0f, (float)2.2f})), (0.3f)) == (true));
    Debug.Assert(HasCloseElements((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)3.9f, (float)4.0f, (float)5.0f, (float)2.2f})), (0.05f)) == (false));
    Debug.Assert(HasCloseElements((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)5.9f, (float)4.0f, (float)5.0f})), (0.95f)) == (true));
    Debug.Assert(HasCloseElements((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)5.9f, (float)4.0f, (float)5.0f})), (0.8f)) == (false));
    Debug.Assert(HasCloseElements((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)3.0f, (float)4.0f, (float)5.0f, (float)2.0f})), (0.1f)) == (true));
    Debug.Assert(HasCloseElements((new List<float>(new float[]{(float)1.1f, (float)2.2f, (float)3.1f, (float)4.1f, (float)5.1f})), (1.0f)) == (true));
    Debug.Assert(HasCloseElements((new List<float>(new float[]{(float)1.1f, (float)2.2f, (float)3.1f, (float)4.1f, (float)5.1f})), (0.5f)) == (false));
    }

}
