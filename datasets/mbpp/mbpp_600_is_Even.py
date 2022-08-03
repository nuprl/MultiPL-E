def is_Even(n) :
	'''
	Write a python function to check whether the given number is even or not.
	'''
	pass

def check(candidate):
	assert candidate(1) == False
	assert candidate(2) == True
	assert candidate(3) == False

def test_check():
	check(is_Even)