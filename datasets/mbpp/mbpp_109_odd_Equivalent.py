def odd_Equivalent(s,n):
	'''
	Write a python function to find the number of numbers with an odd value when rotating a binary string the given number of times.
	'''
	pass

def check(candidate):
	assert candidate("011001",6) == 3
	assert candidate("11011",5) == 4
	assert candidate("1010",4) == 2

def test_check():
	check(odd_Equivalent)