// Given a positive floating point number, it can be decomposed into
// and integer part (largest integer smaller than given number) and decimals
// (leftover part always smaller than 1).
// Return the decimal part of the number.
// >>> truncate_number(3.5)
// 0.5
func truncate_number(number: Double) -> Double {
	fatalError("unimplemented")

}

assert(truncate_number(number: 3.5) == 0.5)
assert(truncate_number(number: 1.25) == 0.25)
assert(truncate_number(number: 123.0) == 0.0)