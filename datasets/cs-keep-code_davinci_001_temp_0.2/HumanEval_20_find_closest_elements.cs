using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // From a supplied list of numbers (of length at least two) select and return two that are the closest to each
    // other and return them in order (smaller number, larger number).
    // >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
    // (2.0, 2.2)
    // >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
    // (2.0, 2.0)
    public static Tuple<float, float> FindClosestElements(List<float> numbers) {
        float min = numbers[0];
        float max = numbers[1];
        for (int i = 0; i < numbers.Count; i++) {
            if (numbers[i] < min) {
                min = numbers[i];
            }
            if (numbers[i] > max) {
                max = numbers[i];
            }
        }
        return new Tuple<float, float>(min, max);

    }
    public static void Main(string[] args) {
    Debug.Assert(FindClosestElements((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)3.9f, (float)4.0f, (float)5.0f, (float)2.2f}))).Equals((Tuple.Create(3.9f, 4.0f))));
    Debug.Assert(FindClosestElements((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)5.9f, (float)4.0f, (float)5.0f}))).Equals((Tuple.Create(5.0f, 5.9f))));
    Debug.Assert(FindClosestElements((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)3.0f, (float)4.0f, (float)5.0f, (float)2.2f}))).Equals((Tuple.Create(2.0f, 2.2f))));
    Debug.Assert(FindClosestElements((new List<float>(new float[]{(float)1.0f, (float)2.0f, (float)3.0f, (float)4.0f, (float)5.0f, (float)2.0f}))).Equals((Tuple.Create(2.0f, 2.0f))));
    Debug.Assert(FindClosestElements((new List<float>(new float[]{(float)1.1f, (float)2.2f, (float)3.1f, (float)4.1f, (float)5.1f}))).Equals((Tuple.Create(2.2f, 3.1f))));
    }

}
