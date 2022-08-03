import std.math;
import std.typecons;
/*

    Given a dictionary, return True if all keys are strings in lower 
    case or all keys are strings in upper case, else return False.
    The function should return False is the given dictionary is empty.
    Examples:
    check_dict_case({"a":"apple", "b":"banana"}) should return True.
    check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
    check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
    check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
    check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
    
*/
bool check_dict_case(Nullable!(string[string]) dict) 
{
    if (dict == null) return false;
    if (dict.Count == 0) return false;
    foreach (var k in dict.Keys)
    {
        if (!(k.ToLower() == k || k.ToUpper() == k)) return false;
    }
    return true;
}

unittest
{
    alias candidate = check_dict_case;

    assert(candidate(["p": "pineapple", "b": "banana"].nullable) == true);
    assert(candidate(["p": "pineapple", "A": "banana", "B": "banana"].nullable) == false);
    assert(candidate(["p": "pineapple", "5": "banana", "a": "apple"].nullable) == false);
    assert(candidate(["Name": "John", "Age": "36", "City": "Houston"].nullable) == false);
    assert(candidate(["STATE": "NC", "ZIP": "12345"].nullable) == true);
    assert(candidate(["fruit": "Orange", "taste": "Sweet"].nullable) == true);
    assert(candidate(Nullable!(string[string]).init) == false);
}
void main(){}