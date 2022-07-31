using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a list of numbers, return the sum of squares of the numbers
    // in the list that are odd. Ignore numbers that are negative or not integers.
    // double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
    // double_the_difference([-1, -2, 0]) == 0
    // double_the_difference([9, -2]) == 81
    // double_the_difference([0]) == 0  
    // If the input list is empty, return 0.
    public static int DoubleTheDifference(List<float> lst) {
        int sum = 0;
        foreach (float i in lst) {
            if (i % 2 != 0) {
                sum += (int)Math.Pow(i, 2);
            }
        }
        return sum;

    }
    public static void Main(string[] args) {
    Debug.Assert(DoubleTheDifference((new List<float>())) == (0));
    Debug.Assert(DoubleTheDifference((new List<float>(new float[]{(float)5.0f, (float)4.0f}))) == (25));
    Debug.Assert(DoubleTheDifference((new List<float>(new float[]{(float)0.1f, (float)0.2f, (float)0.3f}))) == (0));
    Debug.Assert(DoubleTheDifference((new List<float>(new float[]{(float)-10.0f, (float)-20.0f, (float)-30.0f}))) == (0));
    Debug.Assert(DoubleTheDifference((new List<float>(new float[]{(float)-1.0f, (float)-2.0f, (float)8.0f}))) == (0));
    Debug.Assert(DoubleTheDifference((new List<float>(new float[]{(float)0.2f, (float)3.0f, (float)5.0f}))) == (34));
    Debug.Assert(DoubleTheDifference((new List<float>(new float[]{(float)-9.0f, (float)-7.0f, (float)-5.0f, (float)-3.0f, (float)-1.0f, (float)1.0f, (float)3.0f, (float)5.0f, (float)7.0f, (float)9.0f}))) == (165));
    }

}
