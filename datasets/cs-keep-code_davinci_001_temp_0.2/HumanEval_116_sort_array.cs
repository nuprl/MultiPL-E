using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // In this Kata, you have to sort an array of non-negative integers according to
    // number of ones in their binary representation in ascending order.
    // For similar number of ones, sort based on decimal value.
    // It must be implemented like this:
    // >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
    // >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
    // >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
    public static List<int> SortArray(List<int> arr) {
        // your code here
        List<int> result = new List<int>();
        List<int> ones = new List<int>();
        List<int> zeros = new List<int>();
        List<int> decimals = new List<int>();
        List<int> decimals2 = new List<int>();
        List<int> decimals3 = new List<int>();
        List<int> decimals4 = new List<int>();
        List<int> decimals5 = new List<int>();
        List<int> decimals6 = new List<int>();
        List<int> decimals7 = new List<int>();
        List<int> decimals8 = new List<int>();
        List<int> decimals9 = new List<int>();
        List<int> decimals10 = new List<int>();
        List<int> decimals11 = new List<int>();
        List<int> decimals12 = new List<int>();
        List<int> decimals13 = new List<int>();
        List<int> decimals14 = new List<int>();
        List<int> decimals15 = new List<int>();
        List<int> decimals16 = new List<int>();
        List<int> decimals17 = new List<int>();
        List<int> decimals18 = new List<int>();
        List<int> decimals19 = new List<int>();
        List<int> decimals20 = new List<int>();
        List<int> decimals21 = new List<int>();
        List<int> decimals22 = new List<int>();
        List<int> decimals23 = new List<int>();
        List<int> decimals24 = new List<int>();
        List<int> decimals25 = new List<int>();
        List<int> decimals26 = new List<int>();
        List<int> decimals27

    }
    public static void Main(string[] args) {
    Debug.Assert(SortArray((new List<int>(new int[]{(int)1, (int)5, (int)2, (int)3, (int)4}))).Equals((new List<int>(new int[]{(int)1, (int)2, (int)4, (int)3, (int)5}))));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)-2, (int)-3, (int)-4, (int)-5, (int)-6}))).Equals((new List<int>(new int[]{(int)-4, (int)-2, (int)-6, (int)-5, (int)-3}))));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)1, (int)0, (int)2, (int)3, (int)4}))).Equals((new List<int>(new int[]{(int)0, (int)1, (int)2, (int)4, (int)3}))));
    Debug.Assert(SortArray((new List<int>())).Equals((new List<int>())));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)2, (int)5, (int)77, (int)4, (int)5, (int)3, (int)5, (int)7, (int)2, (int)3, (int)4}))).Equals((new List<int>(new int[]{(int)2, (int)2, (int)4, (int)4, (int)3, (int)3, (int)5, (int)5, (int)5, (int)7, (int)77}))));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)3, (int)6, (int)44, (int)12, (int)32, (int)5}))).Equals((new List<int>(new int[]{(int)32, (int)3, (int)5, (int)6, (int)12, (int)44}))));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)2, (int)4, (int)8, (int)16, (int)32}))).Equals((new List<int>(new int[]{(int)2, (int)4, (int)8, (int)16, (int)32}))));
    Debug.Assert(SortArray((new List<int>(new int[]{(int)2, (int)4, (int)8, (int)16, (int)32}))).Equals((new List<int>(new int[]{(int)2, (int)4, (int)8, (int)16, (int)32}))));
    }

}
