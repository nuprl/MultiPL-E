def sequence(n):
	'''
	Write a function to find the nth number in the newman conway sequence.
	'''
	pass

def check(candidate):
	assert candidate(10) == 6
	assert candidate(2) == 1
	assert candidate(3) == 2

def test_check():
	check(sequence)