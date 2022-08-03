def frequency(a,x):
	'''
	Write a function to count the number of occurrences of a number in a given list.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3], 4) == 0
	assert candidate([1,2,2,3,3,3,4], 3) == 3
	assert candidate([0,1,2,3,1,2], 1) == 2

def test_check():
	check(frequency)