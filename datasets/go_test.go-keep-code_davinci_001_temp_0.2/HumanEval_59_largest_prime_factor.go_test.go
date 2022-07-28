package largest_prime_factor_test

import (
    "testing"
    "fmt"
)

// Return the largest prime factor of n. Assume n > 1 and is not a prime.
// >>> largest_prime_factor(13195)
// 29
// >>> largest_prime_factor(2048)
// 2
func largest_prime_factor(n int) int {
    var i int
    var j int
    var k int
    var l int
    var m int
    var n int
    var o int
    var p int
    var q int
    var r int
    var s int
    var t int
    var u int
    var v int
    var w int
    var x int
    var y int
    var z int
    var a int
    var b int
    var c int
    var d int
    var e int
    var f int
    var g int
    var h int
    var i int
    var j int
    var k int
    var l int
    var m int
    var n int
    var o int
    var p int
    var q int
    var r int
    var s int
    var t int
    var u int
    var v int
    var w int
    var x int
    var y int
    var z int
    var a int
    var b int
    var c int
    var d int
    var e int
    var f int
    var g int
    var h int
    var i int
    var j int
    var k int
    var l int
    var m int
    var n int
    var o int
    var p int
    var q int
    var r int
    var s int
    var t int
    var u int
    var v int
    var w int
    var x int
    var y int
    var z int
    var a int
    var b int
    var c int
    var d int
    var e int
    var f int
    var g int
    var h int
    var i int
    var j int
    var k int
    var l int
    var m int
    var n int
    var o int
    var p int
    var q int
    var r int
    var s int
    var t int
    var u int
    var v int
    var w int
    var x int
    var y int
    var z int
    var a int
    var b int
    var c int
    var d int

func TestLargest_Prime_Factor(t *testing.T) {
  candidate := largest_prime_factor
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(15), expected: 5 },
     { actual: candidate(27), expected: 3 },
     { actual: candidate(63), expected: 7 },
     { actual: candidate(330), expected: 11 },
     { actual: candidate(13195), expected: 29 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
