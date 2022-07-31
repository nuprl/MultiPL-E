using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that takes an array of numbers as input and returns 
    // the number of elements in the array that are greater than 10 and both 
    // first and last digits of a number are odd (1, 3, 5, 7, 9).
    // For example:
    // specialFilter([15, -73, 14, -15]) => 1 
    // specialFilter([33, -2, -3, 45, 21, 109]) => 2
    public static int Specialfilter(List<int> nums) {
        int count = 0;
        foreach (int num in nums) {
            if (num > 10 && (num % 10) % 2 == 1 && (num / 10) % 2 == 1) {
                count++;
            }
        }
        return count;

    }
    public static void Main(string[] args) {
    Debug.Assert(Specialfilter((new List<int>(new int[]{(int)5, (int)-2, (int)1, (int)-5}))) == (0));
    Debug.Assert(Specialfilter((new List<int>(new int[]{(int)15, (int)-73, (int)14, (int)-15}))) == (1));
    Debug.Assert(Specialfilter((new List<int>(new int[]{(int)33, (int)-2, (int)-3, (int)45, (int)21, (int)109}))) == (2));
    Debug.Assert(Specialfilter((new List<int>(new int[]{(int)43, (int)-12, (int)93, (int)125, (int)121, (int)109}))) == (4));
    Debug.Assert(Specialfilter((new List<int>(new int[]{(int)71, (int)-2, (int)-33, (int)75, (int)21, (int)19}))) == (3));
    Debug.Assert(Specialfilter((new List<int>(new int[]{(int)1}))) == (0));
    Debug.Assert(Specialfilter((new List<int>())) == (0));
    }

}
