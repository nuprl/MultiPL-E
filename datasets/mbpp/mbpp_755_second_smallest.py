def second_smallest(numbers):
	'''
	Write a function to find the second smallest number in a list.
	'''
	pass

def check(candidate):
	assert candidate([1, 2, -8, -2, 0, -2])==-2
	assert candidate([1, 1, -0.5, 0, 2, -2, -2])==-0.5
	assert candidate([2,2])==None
	assert candidate([2,2,2])==None

def test_check():
	check(second_smallest)