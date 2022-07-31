using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // For a given list of input numbers, calculate Mean Absolute Deviation
    // around the mean of this dataset.
    // Mean Absolute Deviation is the average absolute difference between each
    // element and a centerpoint (mean in this case):
    // MAD = average | x - x_mean |
    // >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
    // 1.0
    public static float MeanAbsoluteDeviation(List<float> numbers) {
        float mean = numbers.Average();
        float sum = 0;
        foreach (float number in numbers) {
            sum += Math.Abs(number - mean);
        }
        return sum / numbers.Count;

    }
    public static void Main(string[] args) {
    Debug.Assert(MeanAbsoluteDeviation((new List<float>(new float[]{(float)1.0f, (float)2.0f}))) == (0.5f));
    Debug.Assert(MeanAbsoluteDeviation((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)3.0f, (float)4.0f}))) == (1.0f));
    Debug.Assert(MeanAbsoluteDeviation((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)3.0f, (float)4.0f, (float)5.0f}))) == (1.2f));
    }

}
