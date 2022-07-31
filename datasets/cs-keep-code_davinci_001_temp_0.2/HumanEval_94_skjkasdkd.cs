using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given a list of integers.
    // You need to find the largest prime value and return the sum of its digits.
    // Examples:
    // For lst = [0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3] the output should be 10
    // For lst = [1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1] the output should be 25
    // For lst = [1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3] the output should be 13
    // For lst = [0,724,32,71,99,32,6,0,5,91,83,0,5,6] the output should be 11
    // For lst = [0,81,12,3,1,21] the output should be 3
    // For lst = [0,8,1,2,1,7] the output should be 7
    public static int Skjkasdkd(List<int> lst) {
        int max = 0;
        int sum = 0;
        for (int i = 0; i < lst.Count; i++) {
            if (lst[i] > max) {
                max = lst[i];
            }
        }
        while (max > 0) {
            sum += max % 10;
            max /= 10;
        }
        return sum;

    }
    public static void Main(string[] args) {
    Debug.Assert(Skjkasdkd((new List<int>(new int[]{(int)0, (int)3, (int)2, (int)1, (int)3, (int)5, (int)7, (int)4, (int)5, (int)5, (int)5, (int)2, (int)181, (int)32, (int)4, (int)32, (int)3, (int)2, (int)32, (int)324, (int)4, (int)3}))) == (10));
    Debug.Assert(Skjkasdkd((new List<int>(new int[]{(int)1, (int)0, (int)1, (int)8, (int)2, (int)4597, (int)2, (int)1, (int)3, (int)40, (int)1, (int)2, (int)1, (int)2, (int)4, (int)2, (int)5, (int)1}))) == (25));
    Debug.Assert(Skjkasdkd((new List<int>(new int[]{(int)1, (int)3, (int)1, (int)32, (int)5107, (int)34, (int)83278, (int)109, (int)163, (int)23, (int)2323, (int)32, (int)30, (int)1, (int)9, (int)3}))) == (13));
    Debug.Assert(Skjkasdkd((new List<int>(new int[]{(int)0, (int)724, (int)32, (int)71, (int)99, (int)32, (int)6, (int)0, (int)5, (int)91, (int)83, (int)0, (int)5, (int)6}))) == (11));
    Debug.Assert(Skjkasdkd((new List<int>(new int[]{(int)0, (int)81, (int)12, (int)3, (int)1, (int)21}))) == (3));
    Debug.Assert(Skjkasdkd((new List<int>(new int[]{(int)0, (int)8, (int)1, (int)2, (int)1, (int)7}))) == (7));
    Debug.Assert(Skjkasdkd((new List<int>(new int[]{(int)8191}))) == (19));
    Debug.Assert(Skjkasdkd((new List<int>(new int[]{(int)8191, (int)123456, (int)127, (int)7}))) == (19));
    Debug.Assert(Skjkasdkd((new List<int>(new int[]{(int)127, (int)97, (int)8192}))) == (10));
    }

}
