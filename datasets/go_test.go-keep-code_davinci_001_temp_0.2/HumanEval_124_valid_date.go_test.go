package valid_date_test

import (
    "testing"
    "fmt"
)

// You have to write a function which validates a given date string and
// returns True if the date is valid otherwise False.
// The date is valid if all of the following rules are satisfied:
// 1. The date string is not empty.
// 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
// 3. The months should not be less than 1 or higher than 12.
// 4. The date should be in the format: mm-dd-yyyy
// for example: 
// valid_date('03-11-2000') => True
// valid_date('15-01-2012') => False
// valid_date('04-0-2040') => False
// valid_date('06-04-2020') => True
// valid_date('06/04/2020') => False
func valid_date(date string) bool {
    // Write your code here
    return false
}


func TestValid_Date(t *testing.T) {
  candidate := valid_date
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("03-11-2000"), expected: true },
     { actual: candidate("15-01-2012"), expected: false },
     { actual: candidate("04-0-2040"), expected: false },
     { actual: candidate("06-04-2020"), expected: true },
     { actual: candidate("01-01-2007"), expected: true },
     { actual: candidate("03-32-2011"), expected: false },
     { actual: candidate(""), expected: false },
     { actual: candidate("04-31-3000"), expected: false },
     { actual: candidate("06-06-2005"), expected: true },
     { actual: candidate("21-31-2000"), expected: false },
     { actual: candidate("04-12-2003"), expected: true },
     { actual: candidate("04122003"), expected: false },
     { actual: candidate("20030412"), expected: false },
     { actual: candidate("2003-04"), expected: false },
     { actual: candidate("2003-04-12"), expected: false },
     { actual: candidate("04-2003"), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
