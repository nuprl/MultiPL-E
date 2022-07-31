using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Input is a space-delimited string of numberals from 'zero' to 'nine'.
    // Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    // Return the string with numbers sorted from smallest to largest
    // >>> sort_numbers('three one five')
    // 'one three five'
    public static string SortNumbers(string numbers) {
        string[] nums = numbers.Split(' ');
        Array.Sort(nums);
        return String.Join(" ", nums);

    }
    public static void Main(string[] args) {
    Debug.Assert(SortNumbers(("")).Equals(("")));
    Debug.Assert(SortNumbers(("three")).Equals(("three")));
    Debug.Assert(SortNumbers(("three five nine")).Equals(("three five nine")));
    Debug.Assert(SortNumbers(("five zero four seven nine eight")).Equals(("zero four five seven eight nine")));
    Debug.Assert(SortNumbers(("six five four three two one zero")).Equals(("zero one two three four five six")));
    }

}
