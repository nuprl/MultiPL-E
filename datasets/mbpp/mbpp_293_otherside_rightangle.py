def otherside_rightangle(w,h):
	'''
	Write a function to find the third side of a right angled triangle.
	'''
	pass

def check(candidate):
	assert candidate(7,8)==10.63014581273465
	assert candidate(3,4)==5
	assert candidate(7,15)==16.55294535724685

def test_check():
	check(otherside_rightangle)