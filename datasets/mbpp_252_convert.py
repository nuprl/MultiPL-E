def convert(numbers):
	'''
	Write a python function to convert complex numbers to polar coordinates.
	'''
	pass

def check(candidate):
	assert candidate(1) == (1.0, 0.0)
	assert candidate(4) == (4.0,0.0)
	assert candidate(5) == (5.0,0.0)

def test_check():
	check(convert)