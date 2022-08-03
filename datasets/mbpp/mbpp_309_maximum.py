def maximum(a,b):
	'''
	Write a python function to find the maximum of two numbers.
	'''
	pass

def check(candidate):
	assert candidate(5,10) == 10
	assert candidate(-1,-2) == -1
	assert candidate(9,7) == 9

def test_check():
	check(maximum)