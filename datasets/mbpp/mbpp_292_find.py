def find(n,m):
	'''
	Write a python function to find quotient of two numbers (rounded down to the nearest integer).
	'''
	pass

def check(candidate):
	assert candidate(10,3) == 3
	assert candidate(4,2) == 2
	assert candidate(20,5) == 4

def test_check():
	check(find)