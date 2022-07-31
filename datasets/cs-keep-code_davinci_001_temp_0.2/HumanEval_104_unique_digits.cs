using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a list of positive integers x. return a sorted list of all 
    // elements that hasn't any even digit.
    // Note: Returned list should be sorted in increasing order.
    // For example:
    // >>> unique_digits([15, 33, 1422, 1])
    // [1, 15, 33]
    // >>> unique_digits([152, 323, 1422, 10])
    // []
    public static List<int> UniqueDigits(List<int> x) {
        List<int> result = new List<int>();
        foreach (int i in x) {
            if (i < 10) {
                result.Add(i);
            } else {
                bool isEven = false;
                while (i > 0) {
                    if (i % 10 % 2 == 0) {
                        isEven = true;
                        break;
                    }
                    i /= 10;
                }
                if (!isEven) {
                    result.Add(i);
                }
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(UniqueDigits((new List<int>(new int[]{(int)15, (int)33, (int)1422, (int)1}))).Equals((new List<int>(new int[]{(int)1, (int)15, (int)33}))));
    Debug.Assert(UniqueDigits((new List<int>(new int[]{(int)152, (int)323, (int)1422, (int)10}))).Equals((new List<int>())));
    Debug.Assert(UniqueDigits((new List<int>(new int[]{(int)12345, (int)2033, (int)111, (int)151}))).Equals((new List<int>(new int[]{(int)111, (int)151}))));
    Debug.Assert(UniqueDigits((new List<int>(new int[]{(int)135, (int)103, (int)31}))).Equals((new List<int>(new int[]{(int)31, (int)135}))));
    }

}
