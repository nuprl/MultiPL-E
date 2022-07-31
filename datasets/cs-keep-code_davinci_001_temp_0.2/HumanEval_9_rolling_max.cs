using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // From a given list of integers, generate a list of rolling maximum element found until given moment
    // in the sequence.
    // >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
    // [1, 2, 3, 3, 3, 4, 4]
    public static List<int> RollingMax(List<int> numbers) {
        List<int> result = new List<int>();
        for (int i = 0; i < numbers.Count; i++) {
            int max = numbers[i];
            for (int j = i + 1; j < numbers.Count; j++) {
                if (numbers[j] > max) {
                    max = numbers[j];
                }
            }
            result.Add(max);
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(RollingMax((new List<int>())).Equals((new List<int>())));
    Debug.Assert(RollingMax((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4}))).Equals((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4}))));
    Debug.Assert(RollingMax((new List<int>(new int[]{(int)4, (int)3, (int)2, (int)1}))).Equals((new List<int>(new int[]{(int)4, (int)4, (int)4, (int)4}))));
    Debug.Assert(RollingMax((new List<int>(new int[]{(int)3, (int)2, (int)3, (int)100, (int)3}))).Equals((new List<int>(new int[]{(int)3, (int)3, (int)3, (int)100, (int)100}))));
    }

}
