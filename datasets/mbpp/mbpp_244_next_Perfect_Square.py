def next_Perfect_Square(N):
	'''
	Write a python function to find the next perfect square greater than a given number.
	'''
	pass

def check(candidate):
	assert candidate(35) == 36
	assert candidate(6) == 9
	assert candidate(9) == 16

def test_check():
	check(next_Perfect_Square)