using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given a list of numbers.
    // You need to return the sum of squared numbers in the given list,
    // round each element in the list to the upper int(Ceiling) first.
    // Examples:
    // For lst = [1,2,3] the output should be 14
    // For lst = [1,4,9] the output should be 98
    // For lst = [1,3,5,7] the output should be 84
    // For lst = [1.4,4.2,0] the output should be 29
    // For lst = [-2.4,1,1] the output should be 6
    public static int SumSquares(List<float> lst) {
        return lst.Select(x => (int)Math.Ceiling(x)).Sum(x => x * x);

    }
    public static void Main(string[] args) {
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)3.0f}))) == (14));
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)3.0f}))) == (14));
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)1.0f, (float)3.0f, (float)5.0f, (float)7.0f}))) == (84));
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)1.4f, (float)4.2f, (float)0.0f}))) == (29));
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)-2.4f, (float)1.0f, (float)1.0f}))) == (6));
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)100.0f, (float)1.0f, (float)15.0f, (float)2.0f}))) == (10230));
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)10000.0f, (float)10000.0f}))) == (200000000));
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)-1.4f, (float)4.6f, (float)6.3f}))) == (75));
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)-1.4f, (float)17.9f, (float)18.9f, (float)19.9f}))) == (1086));
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)0.0f}))) == (0));
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)-1.0f}))) == (1));
    Debug.Assert(SumSquares((new List<float>(new float[]{(float)-1.0f, (float)1.0f, (float)0.0f}))) == (2));
    }

}
