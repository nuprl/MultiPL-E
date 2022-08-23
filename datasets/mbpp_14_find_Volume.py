def find_Volume(l,b,h) :
	'''
	Write a python function to find the volume of a triangular prism.
	'''
	pass

def check(candidate):
	assert candidate(10,8,6) == 240
	assert candidate(3,2,2) == 6
	assert candidate(1,2,1) == 1

def test_check():
	check(find_Volume)