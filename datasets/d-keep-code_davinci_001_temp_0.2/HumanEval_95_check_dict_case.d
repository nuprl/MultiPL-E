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
bool check_dict_case(Nullable!(const(char)[][const(char)[]]) dict) 
{
    if (dict == null)
        return false;
    if (dict.count == 0)
        return false;
    for (int i = 0; i < dict.count; i++)
    {
        if (std.typecons.is_string(dict[i][0]))
        {
            if (std.math.is_lower(dict[i][0]))
                continue;
            else
                return false;
        }
        else
            return false;
    }
    return true;
}

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