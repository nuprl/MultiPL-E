using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // In this task, you will be given a string that represents a number of apples and oranges 
    // that are distributed in a basket of fruit this basket contains 
    // apples, oranges, and mango fruits. Given the string that represents the total number of 
    // the oranges and apples and an integer that represent the total number of the fruits 
    // in the basket return the number of the mango fruits in the basket.
    // for examble:
    // fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
    // fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
    // fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
    // fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
    public static int FruitDistribution(string s, int n) {
        int apples = 0;
        int oranges = 0;
        int mango = 0;
        string[] fruits = s.Split(' ');
        foreach (string fruit in fruits) {
            if (fruit.Contains("apples")) {
                apples = int.Parse(fruit.Replace("apples", ""));
            }
            if (fruit.Contains("oranges")) {
                oranges = int.Parse(fruit.Replace("oranges", ""));
            }
        }
        mango = n - apples - oranges;
        return mango;

    }
    public static void Main(string[] args) {
    Debug.Assert(FruitDistribution(("5 apples and 6 oranges"), (19)) == (8));
    Debug.Assert(FruitDistribution(("5 apples and 6 oranges"), (21)) == (10));
    Debug.Assert(FruitDistribution(("0 apples and 1 oranges"), (3)) == (2));
    Debug.Assert(FruitDistribution(("1 apples and 0 oranges"), (3)) == (2));
    Debug.Assert(FruitDistribution(("2 apples and 3 oranges"), (100)) == (95));
    Debug.Assert(FruitDistribution(("2 apples and 3 oranges"), (5)) == (0));
    Debug.Assert(FruitDistribution(("1 apples and 100 oranges"), (120)) == (19));
    }

}
