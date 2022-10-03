def find_sum(arr):
	'''
	Write a python function to find the sum of non-repeated elements in a given list.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3,1,1,4,5,6]) == 21
	assert candidate([1,10,9,4,2,10,10,45,4]) == 71
	assert candidate([12,10,9,45,2,10,10,45,10]) == 78

def test_check():
	check(find_sum)