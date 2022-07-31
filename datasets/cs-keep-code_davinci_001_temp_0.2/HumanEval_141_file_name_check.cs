using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Create a function which takes a string representing a file's name, and returns
    // 'Yes' if the the file's name is valid, and returns 'No' otherwise.
    // A file's name is considered to be valid if and only if all the following conditions 
    // are met:
    // - There should not be more than three digits ('0'-'9') in the file's name.
    // - The file's name contains exactly one dot '.'
    // - The substring before the dot should not be empty, and it starts with a letter from 
    // the latin alphapet ('a'-'z' and 'A'-'Z').
    // - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
    // Examples:
    // file_name_check("example.txt") # => 'Yes'
    // file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
    public static string FileNameCheck(string file_name) {
        if (file_name.Length > 3 && file_name.Contains(".") && file_name.Split('.').Length == 2) {
            string[] split = file_name.Split('.');
            if (split[0].Length > 0 && split[0][0] >= 'a' && split[0][0] <= 'z' && split[1] == "txt" || split[1] == "exe" || split[1] == "dll") {
                return "Yes";
            }
        }
        return "No";

    }
    public static void Main(string[] args) {
    Debug.Assert(FileNameCheck(("example.txt")).Equals(("Yes")));
    Debug.Assert(FileNameCheck(("1example.dll")).Equals(("No")));
    Debug.Assert(FileNameCheck(("s1sdf3.asd")).Equals(("No")));
    Debug.Assert(FileNameCheck(("K.dll")).Equals(("Yes")));
    Debug.Assert(FileNameCheck(("MY16FILE3.exe")).Equals(("Yes")));
    Debug.Assert(FileNameCheck(("His12FILE94.exe")).Equals(("No")));
    Debug.Assert(FileNameCheck(("_Y.txt")).Equals(("No")));
    Debug.Assert(FileNameCheck(("?aREYA.exe")).Equals(("No")));
    Debug.Assert(FileNameCheck(("/this_is_valid.dll")).Equals(("No")));
    Debug.Assert(FileNameCheck(("this_is_valid.wow")).Equals(("No")));
    Debug.Assert(FileNameCheck(("this_is_valid.txt")).Equals(("Yes")));
    Debug.Assert(FileNameCheck(("this_is_valid.txtexe")).Equals(("No")));
    Debug.Assert(FileNameCheck(("#this2_i4s_5valid.ten")).Equals(("No")));
    Debug.Assert(FileNameCheck(("@this1_is6_valid.exe")).Equals(("No")));
    Debug.Assert(FileNameCheck(("this_is_12valid.6exe4.txt")).Equals(("No")));
    Debug.Assert(FileNameCheck(("all.exe.txt")).Equals(("No")));
    Debug.Assert(FileNameCheck(("I563_No.exe")).Equals(("Yes")));
    Debug.Assert(FileNameCheck(("Is3youfault.txt")).Equals(("Yes")));
    Debug.Assert(FileNameCheck(("no_one#knows.dll")).Equals(("Yes")));
    Debug.Assert(FileNameCheck(("1I563_Yes3.exe")).Equals(("No")));
    Debug.Assert(FileNameCheck(("I563_Yes3.txtt")).Equals(("No")));
    Debug.Assert(FileNameCheck(("final..txt")).Equals(("No")));
    Debug.Assert(FileNameCheck(("final132")).Equals(("No")));
    Debug.Assert(FileNameCheck(("_f4indsartal132.")).Equals(("No")));
    Debug.Assert(FileNameCheck((".txt")).Equals(("No")));
    Debug.Assert(FileNameCheck(("s.")).Equals(("No")));
    }

}
