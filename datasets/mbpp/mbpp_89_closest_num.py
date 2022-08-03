def closest_num(N):
	'''
	Write a function to find the closest smaller number than n.
	'''
	pass

def check(candidate):
	assert candidate(11) == 10
	assert candidate(7) == 6
	assert candidate(12) == 11

def test_check():
	check(closest_num)