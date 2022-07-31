using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You will be given a number in decimal form and your task is to convert it to
    // binary format. The function should return a string, with each character representing a binary
    // number. Each character in the string will be '0' or '1'.
    // There will be an extra couple of characters 'db' at the beginning and at the end of the string.
    // The extra characters are there to help with the format.
    // Examples:
    // decimal_to_binary(15)   # returns "db1111db"
    // decimal_to_binary(32)   # returns "db100000db"
    public static string DecimalToBinary(int decimalNum) {
        string binary = "";
        while (decimalNum > 0) {
            binary = (decimalNum % 2).ToString() + binary;
            decimalNum /= 2;
        }
        return "db" + binary + "db";

    }
    public static void Main(string[] args) {
    Debug.Assert(DecimalToBinary((0)).Equals(("db0db")));
    Debug.Assert(DecimalToBinary((32)).Equals(("db100000db")));
    Debug.Assert(DecimalToBinary((103)).Equals(("db1100111db")));
    Debug.Assert(DecimalToBinary((15)).Equals(("db1111db")));
    }

}
