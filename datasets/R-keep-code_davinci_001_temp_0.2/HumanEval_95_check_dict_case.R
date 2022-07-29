# Given a dictionary, return True if all keys are strings in lower 
# case or all keys are strings in upper case, else return False.
# The function should return False is the given dictionary is empty.
# Examples:
# check_dict_case({"a":"apple", "b":"banana"}) should return True.
# check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
# check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
# check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
# check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
check_dict_case <- function(dict) {
    # your code here
}


test_humaneval <- function() {
candidate <- check_dict_case
    if(!identical(candidate(list("'p'" = 'pineapple', "'b'" = 'banana')), TRUE)){quit('no', 1)}
    if(!identical(candidate(list("'p'" = 'pineapple', "'A'" = 'banana', "'B'" = 'banana')), FALSE)){quit('no', 1)}
    if(!identical(candidate(list("'p'" = 'pineapple', "'5'" = 'banana', "'a'" = 'apple')), FALSE)){quit('no', 1)}
    if(!identical(candidate(list("'Name'" = 'John', "'Age'" = '36', "'City'" = 'Houston')), FALSE)){quit('no', 1)}
    if(!identical(candidate(list("'STATE'" = 'NC', "'ZIP'" = '12345')), TRUE)){quit('no', 1)}
    if(!identical(candidate(list("'fruit'" = 'Orange', "'taste'" = 'Sweet')), TRUE)){quit('no', 1)}
    if(!identical(candidate(list()), FALSE)){quit('no', 1)}
}
test_humaneval()