// Write a function vowels_count which takes a string representing
// a word as input and returns the number of vowels in the string.
// Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
// vowel, but only when it is at the end of the given word.
// Example:
// >>> vowels_count("abcde")
// 2
// >>> vowels_count("ACEDY")
// 3
func vowels_count(s: String) -> Int {
	fatalError("unimplemented")

}

assert(vowels_count(s: abcde) == 2)
assert(vowels_count(s: Alone) == 3)
assert(vowels_count(s: key) == 2)
assert(vowels_count(s: bye) == 1)
assert(vowels_count(s: keY) == 2)
assert(vowels_count(s: bYe) == 1)
assert(vowels_count(s: ACEDY) == 3)