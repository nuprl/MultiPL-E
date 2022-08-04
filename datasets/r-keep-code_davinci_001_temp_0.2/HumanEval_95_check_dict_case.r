# Given a dictionary, return True if all keys are strings in lower 
# case or all keys are strings in upper case, else return False.
# The function should return False is the given dictionary is empty.
# Examples:
# >>> check_dict_case({"a":"apple", "b":"banana"})
# True
# >>> check_dict_case({"a":"apple", "A":"banana", "B":"banana"})
# False
# >>> check_dict_case({"a":"apple", 8:"banana", "a":"apple"})
# False
# >>> check_dict_case({"Name":"John", "Age":"36", "City":"Houston"})
# False
# >>> check_dict_case({"STATE":"NC", "ZIP":"12345" })
# True
check_dict_case <- function(dict) {
    # YOUR CODE HERE
    if(length(dict) == 0) {
        return(FALSE)
    }
    for(key in dict) {
        if(is.character(key)) {
            if(tolower(key) != key) {
                return(FALSE)
            }
        } else {
            return(FALSE)
        }
    }
    return(TRUE)
}
check_dict_case({"a":"apple", "b":"banana"})
check_dict_case({"a":"apple", "A":"banana", "B":"banana"})
check_dict_case({"a":"apple", 8:"banana", "a":"apple"})
check_dict_case({"Name":"John", "Age":"36", "City":"Houston"})
check_dict_case({"STATE":"NC", "ZIP":"12345" })


test_humaneval <- function() {
candidate <- check_dict_case
    if(!identical(candidate(list('p' = 'pineapple', 'b' = 'banana')), TRUE)){quit('no', 1)}
    if(!identical(candidate(list('p' = 'pineapple', 'A' = 'banana', 'B' = 'banana')), FALSE)){quit('no', 1)}
    if(!identical(candidate(list('p' = 'pineapple', '5' = 'banana', 'a' = 'apple')), FALSE)){quit('no', 1)}
    if(!identical(candidate(list('Name' = 'John', 'Age' = '36', 'City' = 'Houston')), FALSE)){quit('no', 1)}
    if(!identical(candidate(list('STATE' = 'NC', 'ZIP' = '12345')), TRUE)){quit('no', 1)}
    if(!identical(candidate(list('fruit' = 'Orange', 'taste' = 'Sweet')), TRUE)){quit('no', 1)}
    if(!identical(candidate(list()), FALSE)){quit('no', 1)}
}
test_humaneval()