def minimum(a,b):
	'''
	Write a python function to find the minimum of two numbers.
	'''
	pass

def check(candidate):
	assert candidate(1,2) == 1
	assert candidate(-5,-4) == -5
	assert candidate(0,0) == 0

def test_check():
	check(minimum)