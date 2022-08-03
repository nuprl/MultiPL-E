def search(arr):
	'''
	Write a python function to find the element that appears only once in a sorted array.
	'''
	pass

def check(candidate):
	assert candidate([1,1,2,2,3]) == 3
	assert candidate([1,1,3,3,4,4,5,5,7,7,8]) == 8
	assert candidate([1,2,2,3,3,4,4]) == 1

def test_check():
	check(search)