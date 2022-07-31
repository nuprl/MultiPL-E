using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
    // Empty sum should be equal to 0 and empty product should be equal to 1.
    // >>> sum_product([])
    // (0, 1)
    // >>> sum_product([1, 2, 3, 4])
    // (10, 24)
    public static Tuple<int, int> SumProduct(List<int> numbers) {
        int sum = 0;
        int product = 1;
        for (int i = 0; i < numbers.Count; i++) {
            sum += numbers[i];
            product *= numbers[i];
        }
        return new Tuple<int, int>(sum, product);

    }
    public static void Main(string[] args) {
    Debug.Assert(SumProduct((new List<int>())).Equals((Tuple.Create(0, 1))));
    Debug.Assert(SumProduct((new List<int>(new int[]{(int)1, (int)1, (int)1}))).Equals((Tuple.Create(3, 1))));
    Debug.Assert(SumProduct((new List<int>(new int[]{(int)100, (int)0}))).Equals((Tuple.Create(100, 0))));
    Debug.Assert(SumProduct((new List<int>(new int[]{(int)3, (int)5, (int)7}))).Equals((Tuple.Create(15, 105))));
    Debug.Assert(SumProduct((new List<int>(new int[]{(int)10}))).Equals((Tuple.Create(10, 10))));
    }

}
