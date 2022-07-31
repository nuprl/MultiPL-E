using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given list of numbers (of at least two elements), apply a linear transform to that list,
    // such that the smallest number will become 0 and the largest will become 1
    // >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
    // [0.0, 0.25, 0.5, 0.75, 1.0]
    public static List<float> RescaleToUnit(List<float> numbers) {
        float min = numbers.Min();
        float max = numbers.Max();
        float range = max - min;
        return numbers.Select(x => (x - min) / range).ToList();

    }
    public static void Main(string[] args) {
    Debug.Assert(RescaleToUnit((new List<float>(new float[]{(float)2.0f, (float)49.9f}))).Equals((new List<float>(new float[]{(float)0.0f, (float)1.0f}))));
    Debug.Assert(RescaleToUnit((new List<float>(new float[]{(float)100.0f, (float)49.9f}))).Equals((new List<float>(new float[]{(float)1.0f, (float)0.0f}))));
    Debug.Assert(RescaleToUnit((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)3.0f, (float)4.0f, (float)5.0f}))).Equals((new List<float>(new float[]{(float)0.0f, (float)0.25f, (float)0.5f, (float)0.75f, (float)1.0f}))));
    Debug.Assert(RescaleToUnit((new List<float>(new float[]{(float)2.0f, (float)1.0f, (float)5.0f, (float)3.0f, (float)4.0f}))).Equals((new List<float>(new float[]{(float)0.25f, (float)0.0f, (float)1.0f, (float)0.5f, (float)0.75f}))));
    Debug.Assert(RescaleToUnit((new List<float>(new float[]{(float)12.0f, (float)11.0f, (float)15.0f, (float)13.0f, (float)14.0f}))).Equals((new List<float>(new float[]{(float)0.25f, (float)0.0f, (float)1.0f, (float)0.5f, (float)0.75f}))));
    }

}
