
// Given a dictionary, return True if all keys are strings in lower 
// case or all keys are strings in upper case, else return False.
// The function should return False is the given dictionary is empty.
// Examples:
// check_dict_case({"a":"apple", "b":"banana"}) should return True.
// check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
// check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
// check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
// check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
func check_dict_case(dict: [String : String]) -> Bool {
    var lower = true
    var upper = true
    for (key, value) in dict {
        if key.lowercased() != key {
            lower = false
        }
        if key.uppercased() != key {
            upper = false
        }
    }
    return lower || upper

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(check_dict_case(dict: ["p" : "pineapple", "b" : "banana"]) == true)
assert(check_dict_case(dict: ["p" : "pineapple", "A" : "banana", "B" : "banana"]) == false)
assert(check_dict_case(dict: ["p" : "pineapple", "5" : "banana", "a" : "apple"]) == false)
assert(check_dict_case(dict: ["Name" : "John", "Age" : "36", "City" : "Houston"]) == false)
assert(check_dict_case(dict: ["STATE" : "NC", "ZIP" : "12345"]) == true)
assert(check_dict_case(dict: ["fruit" : "Orange", "taste" : "Sweet"]) == true)
assert(check_dict_case(dict: [:] as [String : String]) == false)