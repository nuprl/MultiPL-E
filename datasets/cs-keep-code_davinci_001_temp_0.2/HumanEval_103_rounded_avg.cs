using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given two positive integers n and m, and your task is to compute the
    // average of the integers from n through m (including n and m). 
    // Round the answer to the nearest integer and convert that to binary.
    // If n is greater than m, return -1.
    // Example:
    // rounded_avg(1, 5) => "0b11"
    // rounded_avg(7, 5) => -1
    // rounded_avg(10, 20) => "0b1111"
    // rounded_avg(20, 33) => "0b11010"
    public static Union_string_int RoundedAvg(int n, int m) {
        if (n > m) return -1;
        double avg = (n + m) / 2.0;
        int rounded = (int)Math.Round(avg);
        return new Union_string_int(rounded.ToString("b"));

    }
    public static void Main(string[] args) {
    Debug.Assert(RoundedAvg((1), (5)).Equals((Union_string_int("0b11"))));
    Debug.Assert(RoundedAvg((7), (13)).Equals((Union_string_int("0b1010"))));
    Debug.Assert(RoundedAvg((964), (977)).Equals((Union_string_int("0b1111001010"))));
    Debug.Assert(RoundedAvg((996), (997)).Equals((Union_string_int("0b1111100100"))));
    Debug.Assert(RoundedAvg((560), (851)).Equals((Union_string_int("0b1011000010"))));
    Debug.Assert(RoundedAvg((185), (546)).Equals((Union_string_int("0b101101110"))));
    Debug.Assert(RoundedAvg((362), (496)).Equals((Union_string_int("0b110101101"))));
    Debug.Assert(RoundedAvg((350), (902)).Equals((Union_string_int("0b1001110010"))));
    Debug.Assert(RoundedAvg((197), (233)).Equals((Union_string_int("0b11010111"))));
    Debug.Assert(RoundedAvg((7), (5)).Equals((Union_string_int(-1))));
    Debug.Assert(RoundedAvg((5), (1)).Equals((Union_string_int(-1))));
    Debug.Assert(RoundedAvg((5), (5)).Equals((Union_string_int("0b101"))));
    }

}
