# ---- HumanEval_19_sort_numbers --- completion 6 ---- 
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
    // >>> SortNumbers(("three one five"))
    // ("one three five")
    public static string SortNumbers(string numbers) {
        var nums = numbers.Split(' ').Select(x => x.ToLower()).Select(x => {
            switch (x) {
                case "zero": return 0;
                case "one": return 1;
                case "two": return 2;
                case "three": return 3;
                case "four": return 4;
                case "five": return 5;
                case "six": return 6;
                case "seven": return 7;
                case "eight": return 8;
                case "nine": return 9;
                default: throw new ArgumentException("Invalid number");
            }
        }).ToArray();
        Array.Sort(nums);
        return string.Join(" ", nums.Select(x => {
            switch (x) {
                case 0: return "zero";
                case 1: return "one";
                case 2: return "two";
                case 3: return "three";
                case 4: return "four";
                case 5: return "five";
                case 6: return "six";
                case 7: return "seven";
                case 8: return "eight";
                case 9: return "nine";
                default: throw new ArgumentException("Invalid number");
            }
        }));
    }
    public static void Main(string[] args) {
    Debug.Assert(SortNumbers(("")).Equals(("")));
    Debug.Assert(SortNumbers(("three")).Equals(("three")));
    Debug.Assert(SortNumbers(("three five nine")).Equals(("three five nine")));
    Debug.Assert(SortNumbers(("five zero four seven nine eight")).Equals(("zero four five seven eight nine")));
    Debug.Assert(SortNumbers(("six five four three two one zero")).Equals(("zero one two three four five six")));
    }

}

# status = Exception
# exit_code = 1
''' stderr = 

Unhandled Exception:
System.ArgumentException: Invalid number
  at Problem+<>c.<SortNumbers>b__0_1 (System.String x) [0x0017d] in <84a93c7d4108413faf07070cc6a536ce>:0 
  at System.Linq.Utilities+<>c__DisplayClass2_0`3[TSource,TMiddle,TResult].<CombineSelectors>b__0 (TSource x) [0x00012] in <e540098dd111461e919c5863f6975c29>:0 
  at System.Linq.Enumerable+SelectArrayIterator`2[TSource,TResult].ToArray () [0x00012] in <e540098dd111461e919c5863f6975c29>:0 
  at System.Linq.Enumerable.ToArray[TSource] (System.Collections.Generic.IEnumerable`1[T] source) [0x0001f] in <e540098dd111461e919c5863f6975c29>:0 
  at Problem.SortNumbers (System.String numbers) [0x00052] in <84a93c7d4108413faf07070cc6a536ce>:0 
  at Problem.Main (System.String[] args) [0x00001] in <84a93c7d4108413faf07070cc6a536ce>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.ArgumentException: Invalid number
  at Problem+<>c.<SortNumbers>b__0_1 (System.String x) [0x0017d] in <84a93c7d4108413faf07070cc6a536ce>:0 
  at System.Linq.Utilities+<>c__DisplayClass2_0`3[TSource,TMiddle,TResult].<CombineSelectors>b__0 (TSource x) [0x00012] in <e540098dd111461e919c5863f6975c29>:0 
  at System.Linq.Enumerable+SelectArrayIterator`2[TSource,TResult].ToArray () [0x00012] in <e540098dd111461e919c5863f6975c29>:0 
  at System.Linq.Enumerable.ToArray[TSource] (System.Collections.Generic.IEnumerable`1[T] source) [0x0001f] in <e540098dd111461e919c5863f6975c29>:0 
  at Problem.SortNumbers (System.String numbers) [0x00052] in <84a93c7d4108413faf07070cc6a536ce>:0 
  at Problem.Main (System.String[] args) [0x00001] in <84a93c7d4108413faf07070cc6a536ce>:0 

'''
''' stdout = 

'''





