def min_Jumps(steps, d):
	'''
	Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
	'''
	pass

def check(candidate):
	assert candidate((3,4),11)==3.5
	assert candidate((3,4),0)==0
	assert candidate((11,14),11)==1

def test_check():
	check(min_Jumps)