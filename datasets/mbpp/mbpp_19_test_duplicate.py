def test_duplicate(arraynums):
	'''
	Write a function to find whether a given array of integers contains any duplicate element.
	'''
	pass

def check(candidate):
	assert candidate(([1,2,3,4,5]))==False
	assert candidate(([1,2,3,4, 4]))==True
	assert candidate([1,1,2,2,3,3,4,4,5])==True

def test_check():
	check(test_duplicate)