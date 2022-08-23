def is_nonagonal(n):
	'''
	Write a function to find the nth nonagonal number.
	'''
	pass

def check(candidate):
	assert candidate(10) == 325
	assert candidate(15) == 750
	assert candidate(18) == 1089

def test_check():
	check(is_nonagonal)