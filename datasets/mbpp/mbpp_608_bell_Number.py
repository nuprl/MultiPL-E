def bell_Number(n):
	'''
	Write a python function to find nth bell number.
	'''
	pass

def check(candidate):
	assert candidate(2) == 2
	assert candidate(3) == 5
	assert candidate(4) == 15

def test_check():
	check(bell_Number)