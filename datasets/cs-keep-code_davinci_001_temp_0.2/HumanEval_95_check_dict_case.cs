using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a dictionary, return True if all keys are strings in lower 
    // case or all keys are strings in upper case, else return False.
    // The function should return False is the given dictionary is empty.
    // Examples:
    // check_dict_case({"a":"apple", "b":"banana"}) should return True.
    // check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
    // check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
    // check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
    // check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
    public static bool CheckDictCase(Dictionary<string,string> dict) {
        if (dict.Count == 0) {
            return false;
        }
        foreach (KeyValuePair<string,string> kvp in dict) {
            if (kvp.Key.ToLower() != kvp.Key || kvp.Key.ToUpper() != kvp.Key) {
                return false;
            }
        }
        return true;

    }
    public static void Main(string[] args) {
    Debug.Assert(CheckDictCase((new Dictionary<string,string>(){{"p", "pineapple"}, {"b", "banana"}})) == (true));
    Debug.Assert(CheckDictCase((new Dictionary<string,string>(){{"p", "pineapple"}, {"A", "banana"}, {"B", "banana"}})) == (false));
    Debug.Assert(CheckDictCase((new Dictionary<string,string>(){{"p", "pineapple"}, {"5", "banana"}, {"a", "apple"}})) == (false));
    Debug.Assert(CheckDictCase((new Dictionary<string,string>(){{"Name", "John"}, {"Age", "36"}, {"City", "Houston"}})) == (false));
    Debug.Assert(CheckDictCase((new Dictionary<string,string>(){{"STATE", "NC"}, {"ZIP", "12345"}})) == (true));
    Debug.Assert(CheckDictCase((new Dictionary<string,string>(){{"fruit", "Orange"}, {"taste", "Sweet"}})) == (true));
    Debug.Assert(CheckDictCase((new Dictionary<string,string>())) == (false));
    }

}
