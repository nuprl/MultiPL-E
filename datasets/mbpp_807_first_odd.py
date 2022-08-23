def first_odd(nums):
	'''
	Write a python function to find the first odd number in a given list of numbers.
	'''
	pass

def check(candidate):
	assert candidate([1,3,5]) == 1
	assert candidate([2,4,1,3]) == 1
	assert candidate ([8,9,1]) == 9

def test_check():
	check(first_odd)