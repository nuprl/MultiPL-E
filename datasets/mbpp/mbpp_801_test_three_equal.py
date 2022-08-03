def test_three_equal(x,y,z):
	'''
	Write a python function to count the number of equal numbers from three given integers.
	'''
	pass

def check(candidate):
	assert candidate(1,1,1) == 3
	assert candidate(-1,-2,-3) == 0
	assert candidate(1,2,2) == 2

def test_check():
	check(test_three_equal)