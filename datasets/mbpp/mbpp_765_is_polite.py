def is_polite(n):
	'''
	Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
	'''
	pass

def check(candidate):
	assert candidate(7) == 11
	assert candidate(4) == 7
	assert candidate(9) == 13

def test_check():
	check(is_polite)