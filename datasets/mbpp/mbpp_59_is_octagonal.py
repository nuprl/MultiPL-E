def is_octagonal(n):
	'''
	Write a function to find the nth octagonal number.
	'''
	pass

def check(candidate):
	assert candidate(5) == 65
	assert candidate(10) == 280
	assert candidate(15) == 645

def test_check():
	check(is_octagonal)