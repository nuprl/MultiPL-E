def get_Inv_Count(arr):
	'''
	Write a python function to count inversions in an array.
	'''
	pass

def check(candidate):
	assert candidate([1,20,6,4,5]) == 5
	assert candidate([1,2,1]) == 1
	assert candidate([1,2,5,6,1]) == 3

def test_check():
	check(get_Inv_Count)