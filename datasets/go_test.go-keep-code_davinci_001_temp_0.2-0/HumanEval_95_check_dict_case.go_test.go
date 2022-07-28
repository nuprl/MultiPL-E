package check_dict_case_test

import (
    "testing"
    "fmt"
)

// Given a dictionary, return True if all keys are strings in lower 
// case or all keys are strings in upper case, else return False.
// The function should return False is the given dictionary is empty.
// Examples:
// check_dict_case({"a":"apple", "b":"banana"}) should return True.
// check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
// check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
// check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
// check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
func check_dict_case(dict map[string]string) bool {
    for key, _ := range dict {
        if len(key) == 1 {
            if key != key.ToLower() {
                return false
            }
        } else {
            if key != key.ToUpper() {
                return false
            }
        }
    }
    return true
}


func TestCheck_Dict_Case(t *testing.T) {
  candidate := check_dict_case
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(map[string]string{"p": "pineapple", "b": "banana"}), expected: true },
     { actual: candidate(map[string]string{"p": "pineapple", "A": "banana", "B": "banana"}), expected: false },
     { actual: candidate(map[string]string{"p": "pineapple", "5": "banana", "a": "apple"}), expected: false },
     { actual: candidate(map[string]string{"Name": "John", "Age": "36", "City": "Houston"}), expected: false },
     { actual: candidate(map[string]string{"STATE": "NC", "ZIP": "12345"}), expected: true },
     { actual: candidate(map[string]string{"fruit": "Orange", "taste": "Sweet"}), expected: true },
     { actual: candidate(map[string]string{}), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
