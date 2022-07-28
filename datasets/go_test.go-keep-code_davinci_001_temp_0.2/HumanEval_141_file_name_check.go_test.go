package file_name_check_test

import (
    "testing"
    "fmt"
)

// Create a function which takes a string representing a file's name, and returns
// 'Yes' if the the file's name is valid, and returns 'No' otherwise.
// A file's name is considered to be valid if and only if all the following conditions 
// are met:
// - There should not be more than three digits ('0'-'9') in the file's name.
// - The file's name contains exactly one dot '.'
// - The substring before the dot should not be empty, and it starts with a letter from 
// the latin alphapet ('a'-'z' and 'A'-'Z').
// - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
// Examples:
// file_name_check("example.txt") # => 'Yes'
// file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
func file_name_check(file_name string) string {
    // your code here
    return ""
}


func TestFile_Name_Check(t *testing.T) {
  candidate := file_name_check
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("example.txt"), expected: "Yes" },
     { actual: candidate("1example.dll"), expected: "No" },
     { actual: candidate("s1sdf3.asd"), expected: "No" },
     { actual: candidate("K.dll"), expected: "Yes" },
     { actual: candidate("MY16FILE3.exe"), expected: "Yes" },
     { actual: candidate("His12FILE94.exe"), expected: "No" },
     { actual: candidate("_Y.txt"), expected: "No" },
     { actual: candidate("?aREYA.exe"), expected: "No" },
     { actual: candidate("/this_is_valid.dll"), expected: "No" },
     { actual: candidate("this_is_valid.wow"), expected: "No" },
     { actual: candidate("this_is_valid.txt"), expected: "Yes" },
     { actual: candidate("this_is_valid.txtexe"), expected: "No" },
     { actual: candidate("#this2_i4s_5valid.ten"), expected: "No" },
     { actual: candidate("@this1_is6_valid.exe"), expected: "No" },
     { actual: candidate("this_is_12valid.6exe4.txt"), expected: "No" },
     { actual: candidate("all.exe.txt"), expected: "No" },
     { actual: candidate("I563_No.exe"), expected: "Yes" },
     { actual: candidate("Is3youfault.txt"), expected: "Yes" },
     { actual: candidate("no_one#knows.dll"), expected: "Yes" },
     { actual: candidate("1I563_Yes3.exe"), expected: "No" },
     { actual: candidate("I563_Yes3.txtt"), expected: "No" },
     { actual: candidate("final..txt"), expected: "No" },
     { actual: candidate("final132"), expected: "No" },
     { actual: candidate("_f4indsartal132."), expected: "No" },
     { actual: candidate(".txt"), expected: "No" },
     { actual: candidate("s."), expected: "No" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
