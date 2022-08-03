def tetrahedral_number(n):
	'''
	Write a function to find the nth tetrahedral number.
	'''
	pass

def check(candidate):
	assert candidate(5) == 35
	assert candidate(6) == 56
	assert candidate(7) == 84

def test_check():
	check(tetrahedral_number)