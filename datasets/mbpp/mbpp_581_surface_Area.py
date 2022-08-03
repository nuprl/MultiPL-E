def surface_Area(b,s):
	'''
	Write a python function to find the surface area of a square pyramid with a given base edge and height.
	'''
	pass

def check(candidate):
	assert candidate(3,4) == 33
	assert candidate(4,5) == 56
	assert candidate(1,2) == 5

def test_check():
	check(surface_Area)