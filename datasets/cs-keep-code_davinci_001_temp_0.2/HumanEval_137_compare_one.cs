using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Create a function that takes integers, floats, or strings representing
    // real numbers, and returns the larger variable in its given variable type.
    // Return None if the values are equal.
    // Note: If a real number is represented as a string, the floating point might be . or ,
    // compare_one(1, 2.5) ➞ 2.5
    // compare_one(1, "2,3") ➞ "2,3"
    // compare_one("5,1", "6") ➞ "6"
    // compare_one("1", 1) ➞ None
    public static Union_int_float_string_null CompareOne(Union_int_float_string a, Union_int_float_string b) {
        if (a is int && b is int) {
            return a > b ? a : b;
        }
        if (a is float && b is float) {
            return a > b ? a : b;
        }
        if (a is string && b is string) {
            return a > b ? a : b;
        }
        return null;

    }
    public static void Main(string[] args) {
    Debug.Assert(CompareOne((Union_int_float_string(1)), (Union_int_float_string(2))).Equals((Union_int_float_string_null(2))));
    Debug.Assert(CompareOne((Union_int_float_string(1)), (Union_int_float_string(2.5f))).Equals((Union_int_float_string_null(2.5f))));
    Debug.Assert(CompareOne((Union_int_float_string(2)), (Union_int_float_string(3))).Equals((Union_int_float_string_null(3))));
    Debug.Assert(CompareOne((Union_int_float_string(5)), (Union_int_float_string(6))).Equals((Union_int_float_string_null(6))));
    Debug.Assert(CompareOne((Union_int_float_string(1)), (Union_int_float_string("2,3"))).Equals((Union_int_float_string_null("2,3"))));
    Debug.Assert(CompareOne((Union_int_float_string("5,1")), (Union_int_float_string("6"))).Equals((Union_int_float_string_null("6"))));
    Debug.Assert(CompareOne((Union_int_float_string("1")), (Union_int_float_string("2"))).Equals((Union_int_float_string_null("2"))));
    Debug.Assert(CompareOne((Union_int_float_string("1")), (Union_int_float_string(1))).Equals(null));
    }

}
