def check_greater(arr, number):
	'''
	Write a function to check whether the entered number is greater than the elements of the given array.
	'''
	pass

def check(candidate):
	assert candidate([1, 2, 3, 4, 5], 4) == False
	assert candidate([2, 3, 4, 5, 6], 8) == True
	assert candidate([9, 7, 4, 8, 6, 1], 11) == True

def test_check():
	check(check_greater)