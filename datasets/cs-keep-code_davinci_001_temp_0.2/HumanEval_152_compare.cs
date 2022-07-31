using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // I think we all remember that feeling when the result of some long-awaited
    // event is finally known. The feelings and thoughts you have at that moment are
    // definitely worth noting down and comparing.
    // Your task is to determine if a person correctly guessed the results of a number of matches.
    // You are given two arrays of scores and guesses of equal length, where each index shows a match. 
    // Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
    // the value is 0, and if not, the value is the absolute difference between the guess and the score.
    // example:
    // compare([1,2,3,4,5,1],[1,2,3,4,2,-2]) -> [0,0,0,0,3,3]
    // compare([0,5,0,0,0,4],[4,1,1,0,0,-2]) -> [4,4,1,0,0,6]
    public static List<int> Compare(List<int> game, List<int> guess) {
        List<int> result = new List<int>();
        for (int i = 0; i < game.Count; i++) {
            result.Add(Math.Abs(game[i] - guess[i]));
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Compare((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)1})), (new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)2, (int)-2}))).Equals((new List<int>(new int[]{(int)0, (int)0, (int)0, (int)0, (int)3, (int)3}))));
    Debug.Assert(Compare((new List<int>(new int[]{(int)0, (int)0, (int)0, (int)0, (int)0, (int)0})), (new List<int>(new int[]{(int)0, (int)0, (int)0, (int)0, (int)0, (int)0}))).Equals((new List<int>(new int[]{(int)0, (int)0, (int)0, (int)0, (int)0, (int)0}))));
    Debug.Assert(Compare((new List<int>(new int[]{(int)1, (int)2, (int)3})), (new List<int>(new int[]{(int)-1, (int)-2, (int)-3}))).Equals((new List<int>(new int[]{(int)2, (int)4, (int)6}))));
    Debug.Assert(Compare((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)5})), (new List<int>(new int[]{(int)-1, (int)2, (int)3, (int)4}))).Equals((new List<int>(new int[]{(int)2, (int)0, (int)0, (int)1}))));
    }

}
