def centered_hexagonal_number(n):
	'''
	Write a function to find nth centered hexagonal number.
	'''
	pass

def check(candidate):
	assert candidate(10) == 271
	assert candidate(2) == 7
	assert candidate(9) == 217

def test_check():
	check(centered_hexagonal_number)