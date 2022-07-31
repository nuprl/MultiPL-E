using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You're given a list of deposit and withdrawal operations on a bank account that starts with
    // zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
    // at that point function should return True. Otherwise it should return False.
    // >>> below_zero([1, 2, 3])
    // False
    // >>> below_zero([1, 2, -4, 5])
    // True
    public static bool BelowZero(List<int> operations) {
        int balance = 0;
        foreach (int operation in operations) {
            balance += operation;
            if (balance < 0) {
                return true;
            }
        }
        return false;

    }
    public static void Main(string[] args) {
    Debug.Assert(BelowZero((new List<int>())) == (false));
    Debug.Assert(BelowZero((new List<int>(new int[]{(int)1, (int)2, (int)-3, (int)1, (int)2, (int)-3}))) == (false));
    Debug.Assert(BelowZero((new List<int>(new int[]{(int)1, (int)2, (int)-4, (int)5, (int)6}))) == (true));
    Debug.Assert(BelowZero((new List<int>(new int[]{(int)1, (int)-1, (int)2, (int)-2, (int)5, (int)-5, (int)4, (int)-4}))) == (false));
    Debug.Assert(BelowZero((new List<int>(new int[]{(int)1, (int)-1, (int)2, (int)-2, (int)5, (int)-5, (int)4, (int)-5}))) == (true));
    Debug.Assert(BelowZero((new List<int>(new int[]{(int)1, (int)-2, (int)2, (int)-2, (int)5, (int)-5, (int)4, (int)-4}))) == (true));
    }

}
