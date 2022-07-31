using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given an array arr of integers and you need to return
    // sum of magnitudes of integers multiplied by product of all signs
    // of each number in the array, represented by 1, -1 or 0.
    // Note: return None for empty arr.
    // Example:
    // >>> prod_signs([1, 2, 2, -4]) == -9
    // >>> prod_signs([0, 1]) == 0
    // >>> prod_signs([]) == None
    public static Nullable<int> ProdSigns(List<int> arr) {
        if (arr.Count == 0) {
            return null;
        }
        int sign = 1;
        int sum = 0;
        foreach (int i in arr) {
            if (i == 0) {
                sign = 1;
            } else if (i > 0) {
                sign = 1;
            } else {
                sign = -1;
            }
            sum += i * sign;
        }
        return sum;

    }
    public static void Main(string[] args) {
    Debug.Assert(ProdSigns((new List<int>(new int[]{(int)1, (int)2, (int)2, (int)-4}))).Equals(-9));
    Debug.Assert(ProdSigns((new List<int>(new int[]{(int)0, (int)1}))).Equals(0));
    Debug.Assert(ProdSigns((new List<int>(new int[]{(int)1, (int)1, (int)1, (int)2, (int)3, (int)-1, (int)1}))).Equals(-10));
    Debug.Assert(ProdSigns((new List<int>())).Equals(null));
    Debug.Assert(ProdSigns((new List<int>(new int[]{(int)2, (int)4, (int)1, (int)2, (int)-1, (int)-1, (int)9}))).Equals(20));
    Debug.Assert(ProdSigns((new List<int>(new int[]{(int)-1, (int)1, (int)-1, (int)1}))).Equals(4));
    Debug.Assert(ProdSigns((new List<int>(new int[]{(int)-1, (int)1, (int)1, (int)1}))).Equals(-4));
    Debug.Assert(ProdSigns((new List<int>(new int[]{(int)-1, (int)1, (int)1, (int)0}))).Equals(0));
    }

}
