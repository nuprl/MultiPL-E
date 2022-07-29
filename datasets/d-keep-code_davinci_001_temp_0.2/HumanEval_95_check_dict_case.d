import std.typecons;
import std.math;
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
bool check_dict_case(const(char)[][const(char)[]] dict) 
{
    // your code here
    return false;
}
/*
    Given a dictionary, return True if all keys are strings in upper case, 
    else return False. The function should return False is the given dictionary 
    is empty.
    Examples:
    check_dict_case({"a":"apple", "b":"banana"}) should return False.
    check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return True.
    check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
    check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
    check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
    
*/

unittest
{
    alias candidate = check_dict_case;

    assert(candidate(["p": "pineapple", "b": "banana"]) == true);
    assert(candidate(["p": "pineapple", "A": "banana", "B": "banana"]) == false);
    assert(candidate(["p": "pineapple", "5": "banana", "a": "apple"]) == false);
    assert(candidate(["Name": "John", "Age": "36", "City": "Houston"]) == false);
    assert(candidate(["STATE": "NC", "ZIP": "12345"]) == true);
    assert(candidate(["fruit": "Orange", "taste": "Sweet"]) == true);
    assert(candidate([]) == false);
}
void main(){}