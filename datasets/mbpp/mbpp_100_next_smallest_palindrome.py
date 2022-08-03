def next_smallest_palindrome(num):
	'''
	Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
	'''
	pass

def check(candidate):
	assert candidate(99)==101
	assert candidate(1221)==1331
	assert candidate(120)==121

def test_check():
	check(next_smallest_palindrome)