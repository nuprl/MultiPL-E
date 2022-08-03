def largest_neg(list1):
	'''
	Write a python function to find the largest negative number from the given list.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3,-4,-6]) == -6
	assert candidate([1,2,3,-8,-9]) == -9
	assert candidate([1,2,3,4,-1]) == -1

def test_check():
	check(largest_neg)