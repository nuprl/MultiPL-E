using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given a non-empty list of positive integers. Return the greatest integer that is greater than 
    // zero, and has a frequency greater than or equal to the value of the integer itself. 
    // The frequency of an integer is the number of times it appears in the list.
    // If no such a value exist, return -1.
    // Examples:
    // search([4, 1, 2, 2, 3, 1]) == 2
    // search([1, 2, 2, 3, 3, 3, 4, 4, 4]) == 3
    // search([5, 5, 4, 4, 4]) == -1
    public static int Search(List<int> lst) {
        int max = -1;
        Dictionary<int, int> dic = new Dictionary<int, int>();
        foreach (int i in lst) {
            if (dic.ContainsKey(i)) {
                dic[i]++;
            } else {
                dic.Add(i, 1);
            }
        }
        foreach (int i in dic.Keys) {
            if (dic[i] > dic[i - 1] && dic[i] > dic[i + 1]) {
                max = i;
            }
        }
        return max;

    }
    public static void Main(string[] args) {
    Debug.Assert(Search((new List<int>(new int[]{(int)5, (int)5, (int)5, (int)5, (int)1}))) == (1));
    Debug.Assert(Search((new List<int>(new int[]{(int)4, (int)1, (int)4, (int)1, (int)4, (int)4}))) == (4));
    Debug.Assert(Search((new List<int>(new int[]{(int)3, (int)3}))) == (-1));
    Debug.Assert(Search((new List<int>(new int[]{(int)8, (int)8, (int)8, (int)8, (int)8, (int)8, (int)8, (int)8}))) == (8));
    Debug.Assert(Search((new List<int>(new int[]{(int)2, (int)3, (int)3, (int)2, (int)2}))) == (2));
    Debug.Assert(Search((new List<int>(new int[]{(int)2, (int)7, (int)8, (int)8, (int)4, (int)8, (int)7, (int)3, (int)9, (int)6, (int)5, (int)10, (int)4, (int)3, (int)6, (int)7, (int)1, (int)7, (int)4, (int)10, (int)8, (int)1}))) == (1));
    Debug.Assert(Search((new List<int>(new int[]{(int)3, (int)2, (int)8, (int)2}))) == (2));
    Debug.Assert(Search((new List<int>(new int[]{(int)6, (int)7, (int)1, (int)8, (int)8, (int)10, (int)5, (int)8, (int)5, (int)3, (int)10}))) == (1));
    Debug.Assert(Search((new List<int>(new int[]{(int)8, (int)8, (int)3, (int)6, (int)5, (int)6, (int)4}))) == (-1));
    Debug.Assert(Search((new List<int>(new int[]{(int)6, (int)9, (int)6, (int)7, (int)1, (int)4, (int)7, (int)1, (int)8, (int)8, (int)9, (int)8, (int)10, (int)10, (int)8, (int)4, (int)10, (int)4, (int)10, (int)1, (int)2, (int)9, (int)5, (int)7, (int)9}))) == (1));
    Debug.Assert(Search((new List<int>(new int[]{(int)1, (int)9, (int)10, (int)1, (int)3}))) == (1));
    Debug.Assert(Search((new List<int>(new int[]{(int)6, (int)9, (int)7, (int)5, (int)8, (int)7, (int)5, (int)3, (int)7, (int)5, (int)10, (int)10, (int)3, (int)6, (int)10, (int)2, (int)8, (int)6, (int)5, (int)4, (int)9, (int)5, (int)3, (int)10}))) == (5));
    Debug.Assert(Search((new List<int>(new int[]{(int)1}))) == (1));
    Debug.Assert(Search((new List<int>(new int[]{(int)8, (int)8, (int)10, (int)6, (int)4, (int)3, (int)5, (int)8, (int)2, (int)4, (int)2, (int)8, (int)4, (int)6, (int)10, (int)4, (int)2, (int)1, (int)10, (int)2, (int)1, (int)1, (int)5}))) == (4));
    Debug.Assert(Search((new List<int>(new int[]{(int)2, (int)10, (int)4, (int)8, (int)2, (int)10, (int)5, (int)1, (int)2, (int)9, (int)5, (int)5, (int)6, (int)3, (int)8, (int)6, (int)4, (int)10}))) == (2));
    Debug.Assert(Search((new List<int>(new int[]{(int)1, (int)6, (int)10, (int)1, (int)6, (int)9, (int)10, (int)8, (int)6, (int)8, (int)7, (int)3}))) == (1));
    Debug.Assert(Search((new List<int>(new int[]{(int)9, (int)2, (int)4, (int)1, (int)5, (int)1, (int)5, (int)2, (int)5, (int)7, (int)7, (int)7, (int)3, (int)10, (int)1, (int)5, (int)4, (int)2, (int)8, (int)4, (int)1, (int)9, (int)10, (int)7, (int)10, (int)2, (int)8, (int)10, (int)9, (int)4}))) == (4));
    Debug.Assert(Search((new List<int>(new int[]{(int)2, (int)6, (int)4, (int)2, (int)8, (int)7, (int)5, (int)6, (int)4, (int)10, (int)4, (int)6, (int)3, (int)7, (int)8, (int)8, (int)3, (int)1, (int)4, (int)2, (int)2, (int)10, (int)7}))) == (4));
    Debug.Assert(Search((new List<int>(new int[]{(int)9, (int)8, (int)6, (int)10, (int)2, (int)6, (int)10, (int)2, (int)7, (int)8, (int)10, (int)3, (int)8, (int)2, (int)6, (int)2, (int)3, (int)1}))) == (2));
    Debug.Assert(Search((new List<int>(new int[]{(int)5, (int)5, (int)3, (int)9, (int)5, (int)6, (int)3, (int)2, (int)8, (int)5, (int)6, (int)10, (int)10, (int)6, (int)8, (int)4, (int)10, (int)7, (int)7, (int)10, (int)8}))) == (-1));
    Debug.Assert(Search((new List<int>(new int[]{(int)10}))) == (-1));
    Debug.Assert(Search((new List<int>(new int[]{(int)9, (int)7, (int)7, (int)2, (int)4, (int)7, (int)2, (int)10, (int)9, (int)7, (int)5, (int)7, (int)2}))) == (2));
    Debug.Assert(Search((new List<int>(new int[]{(int)5, (int)4, (int)10, (int)2, (int)1, (int)1, (int)10, (int)3, (int)6, (int)1, (int)8}))) == (1));
    Debug.Assert(Search((new List<int>(new int[]{(int)7, (int)9, (int)9, (int)9, (int)3, (int)4, (int)1, (int)5, (int)9, (int)1, (int)2, (int)1, (int)1, (int)10, (int)7, (int)5, (int)6, (int)7, (int)6, (int)7, (int)7, (int)6}))) == (1));
    Debug.Assert(Search((new List<int>(new int[]{(int)3, (int)10, (int)10, (int)9, (int)2}))) == (-1));
    }

}
