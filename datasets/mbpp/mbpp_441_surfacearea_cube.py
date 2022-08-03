def surfacearea_cube(l):
	'''
	Write a function to find the surface area of a cube of a given size.
	'''
	pass

def check(candidate):
	assert candidate(5)==150
	assert candidate(3)==54
	assert candidate(10)==600

def test_check():
	check(surfacearea_cube)