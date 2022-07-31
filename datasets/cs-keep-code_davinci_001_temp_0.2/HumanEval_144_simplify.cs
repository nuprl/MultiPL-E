using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Your task is to implement a function that will simplify the expression
    // x * n. The function returns True if x * n evaluates to a whole number and False
    // otherwise. Both x and n, are string representation of a fraction, and have the following format,
    // <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
    // You can assume that x, and n are valid fractions, and do not have zero as denominator.
    // simplify("1/5", "5/1") = True
    // simplify("1/6", "2/1") = False
    // simplify("7/10", "10/2") = False
    public static bool Simplify(string x, string n) {
        // your code here
        //Console.WriteLine(x + " " + n);
        BigInteger x_numerator = BigInteger.Parse(x.Split('/')[0]);
        BigInteger x_denominator = BigInteger.Parse(x.Split('/')[1]);
        BigInteger n_numerator = BigInteger.Parse(n.Split('/')[0]);
        BigInteger n_denominator = BigInteger.Parse(n.Split('/')[1]);
        BigInteger x_numerator_n_denominator = x_numerator * n_denominator;
        BigInteger x_denominator_n_numerator = x_denominator * n_numerator;
        BigInteger gcd = BigInteger.GreatestCommonDivisor(x_numerator_n_denominator, x_denominator_n_numerator);
        if (gcd == 1) {
            return true;
        } else {
            return false;
        }

    }
    public static void Main(string[] args) {
    Debug.Assert(Simplify(("1/5"), ("5/1")) == (true));
    Debug.Assert(Simplify(("1/6"), ("2/1")) == (false));
    Debug.Assert(Simplify(("5/1"), ("3/1")) == (true));
    Debug.Assert(Simplify(("7/10"), ("10/2")) == (false));
    Debug.Assert(Simplify(("2/10"), ("50/10")) == (true));
    Debug.Assert(Simplify(("7/2"), ("4/2")) == (true));
    Debug.Assert(Simplify(("11/6"), ("6/1")) == (true));
    Debug.Assert(Simplify(("2/3"), ("5/2")) == (false));
    Debug.Assert(Simplify(("5/2"), ("3/5")) == (false));
    Debug.Assert(Simplify(("2/4"), ("8/4")) == (true));
    Debug.Assert(Simplify(("2/4"), ("4/2")) == (true));
    Debug.Assert(Simplify(("1/5"), ("5/1")) == (true));
    Debug.Assert(Simplify(("1/5"), ("1/5")) == (false));
    }

}
