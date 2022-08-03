def triangle_area(r) :
	'''
	Write a python function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius.
	'''
	pass

def check(candidate):
	assert candidate(-1) == None
	assert candidate(0) == 0
	assert candidate(2) == 4

def test_check():
	check(triangle_area)