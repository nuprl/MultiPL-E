package sum_product_test

import (
    "testing"
    "fmt"
)

// For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
// Empty sum should be equal to 0 and empty product should be equal to 1.
// >>> sum_product([])
// (0, 1)
// >>> sum_product([1, 2, 3, 4])
// (10, 24)
func sum_product(numbers []int) []interface{} {
    var sum int
    var product int
    for _, v := range numbers {
        sum += v
        product *= v
    }
    return []interface{}{sum, product}
}


func TestSum_Product(t *testing.T) {
  candidate := sum_product
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}), expected: []interface{}{0, 1} },
     { actual: candidate([]int{1, 1, 1}), expected: []interface{}{3, 1} },
     { actual: candidate([]int{100, 0}), expected: []interface{}{100, 0} },
     { actual: candidate([]int{3, 5, 7}), expected: []interface{}{15, 105} },
     { actual: candidate([]int{10}), expected: []interface{}{10, 10} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
