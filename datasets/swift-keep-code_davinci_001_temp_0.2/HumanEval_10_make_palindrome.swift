// Find the shortest palindrome that begins with a supplied string.
// Algorithm idea is simple:
// - Find the longest postfix of supplied string that is a palindrome.
// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
// >>> make_palindrome('')
// ''
// >>> make_palindrome('cat')
// 'catac'
// >>> make_palindrome('cata')
// 'catac'
func make_palindrome(string: String) -> String {
	fatalError("unimplemented")

}

assert(make_palindrome(string: ) == )
assert(make_palindrome(string: x) == x)
assert(make_palindrome(string: xyz) == xyzyx)
assert(make_palindrome(string: xyx) == xyx)
assert(make_palindrome(string: jerry) == jerryrrej)