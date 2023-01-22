// C#
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return median of elements in the list l.
    public static float Median(List<long> l) {
        l.Sort();
        int n = l.Count;
        if (n % 2 == 0) {
            return (l[n / 2] + l[n / 2 - 1]) / 2.0f;
        } else {
            return l[n / 2];
        }
    }
}
