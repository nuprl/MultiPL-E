def count_rotation(arr):
	'''
	Write a python function to count the number of rotations required to generate a sorted array. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-array/
	'''
	pass

def check(candidate):
	assert candidate([3,2,1]) == 1
	assert candidate([4,5,1,2,3]) == 2
	assert candidate([7,8,9,1,2,3]) == 3
	assert candidate([1,2,3]) == 0
	assert candidate([1,3,2]) == 2

def test_check():
	check(count_rotation)