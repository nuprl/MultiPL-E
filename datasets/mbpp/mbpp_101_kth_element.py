def kth_element(arr, k):
	'''
	Write a function to find the kth element in the given array using 1-based indexing.
	'''
	pass

def check(candidate):
	assert candidate([12,3,5,7,19], 2) == 3
	assert candidate([17,24,8,23], 3) == 8
	assert candidate([16,21,25,36,4], 4) == 36

def test_check():
	check(kth_element)