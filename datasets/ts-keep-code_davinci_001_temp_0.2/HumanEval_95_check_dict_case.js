//Given a dictionary, return True if all keys are strings in lower 
// case or all keys are strings in upper case, else return False.
// The function should return False is the given dictionary is empty.
// Examples:
// check_dict_case({"a":"apple", "b":"banana"}) should return True.
// check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
// check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
// check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
// check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
function check_dict_case(dict) {
    var keys = Object.keys(dict);
    for (var i = 0; i < keys.length; i++) {
        if (keys[i].toLowerCase() !== keys[i]) {
            return false;
        }
    }
    return true;
}
var assert = require('node:assert');
function test() {
    var candidate = check_dict_case;
    assert.deepEqual(candidate({ "p": "pineapple", "b": "banana" }), true);
    assert.deepEqual(candidate({ "p": "pineapple", "A": "banana", "B": "banana" }), false);
    assert.deepEqual(candidate({ "p": "pineapple", "5": "banana", "a": "apple" }), false);
    assert.deepEqual(candidate({ "Name": "John", "Age": "36", "City": "Houston" }), false);
    assert.deepEqual(candidate({ "STATE": "NC", "ZIP": "12345" }), true);
    assert.deepEqual(candidate({ "fruit": "Orange", "taste": "Sweet" }), true);
    assert.deepEqual(candidate({}), false);
}
test();
