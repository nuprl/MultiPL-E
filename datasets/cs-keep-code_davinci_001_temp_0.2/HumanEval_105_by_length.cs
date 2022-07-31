using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given an array of integers, sort the integers that are between 1 and 9 inclusive,
    // reverse the resulting array, and then replace each digit by its corresponding name from
    // "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
    // For example:
    // arr = [2, 1, 1, 4, 5, 8, 2, 3]   
    // -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
    // -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
    // return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
    // If the array is empty, return an empty array:
    // arr = []
    // return []
    // If the array has any strange number ignore it:
    // arr = [1, -1 , 55] 
    // -> sort arr -> [-1, 1, 55]
    // -> reverse arr -> [55, 1, -1]
    // return = ['One']
    public static List<string> ByLength(List<int> arr) {
        List<string> result = new List<string>();
        if (arr.Count == 0) {
            return result;
        }
        List<int> sorted = arr.OrderBy(x => x).ToList();
        List<int> sorted2 = sorted.Where(x => x >= 1 && x <= 9).ToList();
        List<int> sorted3 = sorted2.OrderByDescending(x => x).ToList();
        for (int i = 0; i < sorted3.Count; i++) {
            switch (sorted3[i]) {
                case 1:
                    result.Add("One");
                    break;
                case 2:
                    result.Add("Two");
                    break;
                case 3:
                    result.Add("Three");
                    break;
                case 4:
                    result.Add("Four");
                    break;
                case 5:
                    result.Add("Five");
                    break;
                case 6:
                    result.Add("Six");
                    break;
                case 7:
                    result.Add("Seven");
                    break;
                case 8:
                    result.Add("Eight");
                    break;
                case 9:
                    result.Add("Nine");
                    break;
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(ByLength((new List<int>(new int[]{(int)2, (int)1, (int)1, (int)4, (int)5, (int)8, (int)2, (int)3}))).Equals((new List<string>(new string[]{(string)"Eight", (string)"Five", (string)"Four", (string)"Three", (string)"Two", (string)"Two", (string)"One", (string)"One"}))));
    Debug.Assert(ByLength((new List<int>())).Equals((new List<string>())));
    Debug.Assert(ByLength((new List<int>(new int[]{(int)1, (int)-1, (int)55}))).Equals((new List<string>(new string[]{(string)"One"}))));
    Debug.Assert(ByLength((new List<int>(new int[]{(int)1, (int)-1, (int)3, (int)2}))).Equals((new List<string>(new string[]{(string)"Three", (string)"Two", (string)"One"}))));
    Debug.Assert(ByLength((new List<int>(new int[]{(int)9, (int)4, (int)8}))).Equals((new List<string>(new string[]{(string)"Nine", (string)"Eight", (string)"Four"}))));
    }

}
