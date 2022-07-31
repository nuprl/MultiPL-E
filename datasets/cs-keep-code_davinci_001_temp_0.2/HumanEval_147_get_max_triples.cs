using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given a positive integer n. You have to create an integer array a of length n.
    // For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
    // Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
    // and a[i] + a[j] + a[k] is a multiple of 3.
    // Example :
    // Input: n = 5
    // Output: 1
    // Explanation: 
    // a = [1, 3, 7, 13, 21]
    // The only valid triple is (1, 7, 13).
    public static int GetMaxTriples(int n) {
        int[] a = new int[n];
        for (int i = 0; i < n; i++) {
            a[i] = i * i - i + 1;
        }
        int count = 0;
        for (int i = 0; i < n; i++) {
            for (int j = i + 1; j < n; j++) {
                for (int k = j + 1; k < n; k++) {
                    if ((a[i] + a[j] + a[k]) % 3 == 0) {
                        count++;
                    }
                }
            }
        }
        return count;

    }
    public static void Main(string[] args) {
    Debug.Assert(GetMaxTriples((5)) == (1));
    Debug.Assert(GetMaxTriples((6)) == (4));
    Debug.Assert(GetMaxTriples((10)) == (36));
    Debug.Assert(GetMaxTriples((100)) == (53361));
    }

}
