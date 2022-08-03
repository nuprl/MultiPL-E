def rectangle_area(l,b):
	'''
	Write a function to find the area of a rectangle.
	'''
	pass

def check(candidate):
	assert candidate(10,20)==200
	assert candidate(10,5)==50
	assert candidate(4,2)==8

def test_check():
	check(rectangle_area)