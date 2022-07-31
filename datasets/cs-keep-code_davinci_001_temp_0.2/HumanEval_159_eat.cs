using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You're a hungry rabbit, and you already have eaten a certain number of carrots,
    // but now you need to eat more carrots to complete the day's meals.
    // you should return an array of [ total number of eaten carrots after your meals,
    // the number of carrots left after your meals ]
    // if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
    // Example:
    // * eat(5, 6, 10) -> [11, 4]
    // * eat(4, 8, 9) -> [12, 1]
    // * eat(1, 10, 10) -> [11, 0]
    // * eat(2, 11, 5) -> [7, 0]
    // Variables:
    // @number : integer
    // the number of carrots that you have eaten.
    // @need : integer
    // the number of carrots that you need to eat.
    // @remaining : integer
    // the number of remaining carrots thet exist in stock
    // Constrain:
    // * 0 <= number <= 1000
    // * 0 <= need <= 1000
    // * 0 <= remaining <= 1000
    // Have fun :)
    public static List<int> Eat(int number, int need, int remaining) {
        // your code goes here
        List<int> result = new List<int>();
        if (number >= need) {
            result.Add(number - need);
            result.Add(remaining);
        } else {
            result.Add(0);
            result.Add(remaining - (need - number));
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Eat((5), (6), (10)).Equals((new List<int>(new int[]{(int)11, (int)4}))));
    Debug.Assert(Eat((4), (8), (9)).Equals((new List<int>(new int[]{(int)12, (int)1}))));
    Debug.Assert(Eat((1), (10), (10)).Equals((new List<int>(new int[]{(int)11, (int)0}))));
    Debug.Assert(Eat((2), (11), (5)).Equals((new List<int>(new int[]{(int)7, (int)0}))));
    Debug.Assert(Eat((4), (5), (7)).Equals((new List<int>(new int[]{(int)9, (int)2}))));
    Debug.Assert(Eat((4), (5), (1)).Equals((new List<int>(new int[]{(int)5, (int)0}))));
    }

}
