using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // This function takes two positive numbers x and y and returns the
    // biggest even integer number that is in the range [x, y] inclusive. If 
    // there's no such number, then the function should return -1.
    // For example:
    // choose_num(12, 15) = 14
    // choose_num(13, 12) = -1
    public static int ChooseNum(int x, int y) {
        int result = -1;
        for (int i = x; i <= y; i++) {
            if (i % 2 == 0) {
                result = i;
                break;
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(ChooseNum((12), (15)) == (14));
    Debug.Assert(ChooseNum((13), (12)) == (-1));
    Debug.Assert(ChooseNum((33), (12354)) == (12354));
    Debug.Assert(ChooseNum((5234), (5233)) == (-1));
    Debug.Assert(ChooseNum((6), (29)) == (28));
    Debug.Assert(ChooseNum((27), (10)) == (-1));
    Debug.Assert(ChooseNum((7), (7)) == (-1));
    Debug.Assert(ChooseNum((546), (546)) == (546));
    }

}
