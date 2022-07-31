using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Create a function which returns the largest index of an element which
    // is not greater than or equal to the element immediately preceding it. If
    // no such element exists then return -1. The given array will not contain
    // duplicate values.
    // Examples:
    // can_arrange([1,2,4,3,5]) = 3
    // can_arrange([1,2,3]) = -1
    public static int CanArrange(List<int> arr) {
        int max = -1;
        for (int i = 0; i < arr.Count; i++) {
            if (arr[i] <= max) {
                return i - 1;
            }
            max = arr[i];
        }
        return -1;

    }
    public static void Main(string[] args) {
    Debug.Assert(CanArrange((new List<int>(new int[]{(int)1, (int)2, (int)4, (int)3, (int)5}))) == (3));
    Debug.Assert(CanArrange((new List<int>(new int[]{(int)1, (int)2, (int)4, (int)5}))) == (-1));
    Debug.Assert(CanArrange((new List<int>(new int[]{(int)1, (int)4, (int)2, (int)5, (int)6, (int)7, (int)8, (int)9, (int)10}))) == (2));
    Debug.Assert(CanArrange((new List<int>(new int[]{(int)4, (int)8, (int)5, (int)7, (int)3}))) == (4));
    Debug.Assert(CanArrange((new List<int>())) == (-1));
    }

}
