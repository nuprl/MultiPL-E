from typing import Dict

def check_dict_case(dict: Dict[str, str]) -> bool:
    """
    Given a dictionary, return True if all keys are strings in lower 
    case or all keys are strings in upper case, else return False.
    The function should return False is the given dictionary is empty.
    Examples:
    >>> check_dict_case({"a":"apple", "b":"banana"})
    True
    >>> check_dict_case({"a":"apple", "A":"banana", "B":"banana"})
    False
    >>> check_dict_case({"a":"apple", 8:"banana", "a":"apple"})
    False
    >>> check_dict_case({"Name":"John", "Age":"36", "City":"Houston"})
    False
    >>> check_dict_case({"STATE":"NC", "ZIP":"12345" })
    True
    """
    ### Canonical solution below ###
    if len(dict.keys()) == 0:
        return False
    lower, upper = True, True
    for key in dict.keys():
        if isinstance(key, str) == False:
            lower = upper = False
            break
        if not key.islower(): lower = False
        if not key.isupper(): upper = False
    return lower or upper

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    assert candidate({"p":"pineapple", "b":"banana"}) == True, "First test error: " + str(candidate({"p":"pineapple", "b":"banana"}))
    assert candidate({"p":"pineapple", "A":"banana", "B":"banana"}) == False, "Second test error: " + str(candidate({"p":"pineapple", "A":"banana", "B":"banana"}))
    assert candidate({"p":"pineapple", "5":"banana", "a":"apple"}) == False, "Third test error: " + str(candidate({"p":"pineapple", 5:"banana", "a":"apple"}))
    assert candidate({"Name":"John", "Age":"36", "City":"Houston"}) == False, "Fourth test error: " + str(candidate({"Name":"John", "Age":"36", "City":"Houston"}))
    assert candidate({"STATE":"NC", "ZIP":"12345" }) == True, "Fifth test error: " + str(candidate({"STATE":"NC", "ZIP":"12345" }))      
    assert candidate({"fruit":"Orange", "taste":"Sweet" }) == True, "Fourth test error: " + str(candidate({"fruit":"Orange", "taste":"Sweet" }))      


    # Check some edge cases that are easy to work out by hand.
    assert candidate({}) == False, "1st edge test error: " + str(candidate({}))

def test_check():
    check(check_dict_case)
