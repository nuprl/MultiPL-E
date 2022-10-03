def last(arr,x):
	'''
	Write a python function to find the last position of an element in a sorted array.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3],1) == 0
	assert candidate([1,1,1,2,3,4],1) == 2
	assert candidate([2,3,2,3,6,8,9],3) == 3

def test_check():
	check(last)