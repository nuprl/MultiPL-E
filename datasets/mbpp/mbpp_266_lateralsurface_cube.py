def lateralsurface_cube(l):
	'''
	Write a function to find the lateral surface area of a cube given its side length.
	'''
	pass

def check(candidate):
	assert candidate(5)==100
	assert candidate(9)==324
	assert candidate(10)==400

def test_check():
	check(lateralsurface_cube)