def is_Monotonic(A):
	'''
	Write a python function to check whether the given array is monotonic or not.
	'''
	pass

def check(candidate):
	assert candidate([6, 5, 4, 4]) == True
	assert candidate([1, 2, 2, 3]) == True
	assert candidate([1, 3, 2]) == False

def test_check():
	check(is_Monotonic)