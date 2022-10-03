def hexagonal_num(n):
	'''
	Write a function to find the nth hexagonal number.
	'''
	pass

def check(candidate):
	assert candidate(10) == 190
	assert candidate(5) == 45
	assert candidate(7) == 91

def test_check():
	check(hexagonal_num)