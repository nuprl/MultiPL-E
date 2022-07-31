using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // In this problem, you will implement a function that takes two lists of numbers,
    // and determines whether it is possible to perform an exchange of elements
    // between them to make lst1 a list of only even numbers.
    // There is no limit on the number of exchanged elements between lst1 and lst2.
    // If it is possible to exchange elements between the lst1 and lst2 to make
    // all the elements of lst1 to be even, return "YES".
    // Otherwise, return "NO".
    // For example:
    // exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
    // exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
    // It is assumed that the input lists will be non-empty.
    public static string Exchange(List<int> lst1, List<int> lst2) {
        // Write your code here
        if (lst1.Count == 0 || lst2.Count == 0) {
            return "NO";
        }
        List<int> lst = new List<int>();
        lst.AddRange(lst1);
        lst.AddRange(lst2);
        int count = 0;
        foreach (int i in lst) {
            if (i % 2 == 0) {
                count++;
            }
        }
        if (count == lst.Count) {
            return "YES";
        }
        return "NO";

    }
    public static void Main(string[] args) {
    Debug.Assert(Exchange((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4})), (new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4}))).Equals(("YES")));
    Debug.Assert(Exchange((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4})), (new List<int>(new int[]{(int)1, (int)5, (int)3, (int)4}))).Equals(("NO")));
    Debug.Assert(Exchange((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4})), (new List<int>(new int[]{(int)2, (int)1, (int)4, (int)3}))).Equals(("YES")));
    Debug.Assert(Exchange((new List<int>(new int[]{(int)5, (int)7, (int)3})), (new List<int>(new int[]{(int)2, (int)6, (int)4}))).Equals(("YES")));
    Debug.Assert(Exchange((new List<int>(new int[]{(int)5, (int)7, (int)3})), (new List<int>(new int[]{(int)2, (int)6, (int)3}))).Equals(("NO")));
    Debug.Assert(Exchange((new List<int>(new int[]{(int)3, (int)2, (int)6, (int)1, (int)8, (int)9})), (new List<int>(new int[]{(int)3, (int)5, (int)5, (int)1, (int)1, (int)1}))).Equals(("NO")));
    Debug.Assert(Exchange((new List<int>(new int[]{(int)100, (int)200})), (new List<int>(new int[]{(int)200, (int)200}))).Equals(("YES")));
    }

}
