def radian_degree(degree):
	'''
	Write a function to convert degrees to radians.
	'''
	pass

def check(candidate):
	assert candidate(90)==1.5707963267948966
	assert candidate(60)==1.0471975511965976
	assert candidate(120)==2.0943951023931953

def test_check():
	check(radian_degree)