using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // "
    // This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
    // multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
    // change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
    // Examples:
    // For lst = [1,2,3] the output should be 6
    // For lst = []  the output should be 0
    // For lst = [-1,-5,2,-1,-5]  the output should be -126
    public static int SumSquares(List<int> lst) {
        int sum = 0;
        for (int i = 0; i < lst.Count; i++) {
            if (i % 3 == 0) {
                sum += lst[i] * lst[i];
            }
            else if (i % 4 == 0 && i % 3 != 0) {
                sum += lst[i] * lst[i] * lst[i];
            }
        }
        return sum;

    }
    public static void Main(string[] args) {
    Debug.Assert(SumSquares((new List<int>(new int[]{(int)1, (int)2, (int)3}))) == (6));
    Debug.Assert(SumSquares((new List<int>(new int[]{(int)1, (int)4, (int)9}))) == (14));
    Debug.Assert(SumSquares((new List<int>())) == (0));
    Debug.Assert(SumSquares((new List<int>(new int[]{(int)1, (int)1, (int)1, (int)1, (int)1, (int)1, (int)1, (int)1, (int)1}))) == (9));
    Debug.Assert(SumSquares((new List<int>(new int[]{(int)-1, (int)-1, (int)-1, (int)-1, (int)-1, (int)-1, (int)-1, (int)-1, (int)-1}))) == (-3));
    Debug.Assert(SumSquares((new List<int>(new int[]{(int)0}))) == (0));
    Debug.Assert(SumSquares((new List<int>(new int[]{(int)-1, (int)-5, (int)2, (int)-1, (int)-5}))) == (-126));
    Debug.Assert(SumSquares((new List<int>(new int[]{(int)-56, (int)-99, (int)1, (int)0, (int)-2}))) == (3030));
    Debug.Assert(SumSquares((new List<int>(new int[]{(int)-1, (int)0, (int)0, (int)0, (int)0, (int)0, (int)0, (int)0, (int)-1}))) == (0));
    Debug.Assert(SumSquares((new List<int>(new int[]{(int)-16, (int)-9, (int)-2, (int)36, (int)36, (int)26, (int)-20, (int)25, (int)-40, (int)20, (int)-4, (int)12, (int)-26, (int)35, (int)37}))) == (-14196));
    Debug.Assert(SumSquares((new List<int>(new int[]{(int)-1, (int)-3, (int)17, (int)-1, (int)-15, (int)13, (int)-1, (int)14, (int)-14, (int)-12, (int)-5, (int)14, (int)-14, (int)6, (int)13, (int)11, (int)16, (int)16, (int)4, (int)10}))) == (-1448));
    }

}
