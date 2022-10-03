def max_Product(arr):
	'''
	Write a python function to find a pair with highest product from a given array of integers.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3,4,7,0,8,4]) == (7,8)
	assert candidate([0,-1,-2,-4,5,0,-6]) == (-4,-6)
	assert candidate([1,2,3]) == (2,3)

def test_check():
	check(max_Product)