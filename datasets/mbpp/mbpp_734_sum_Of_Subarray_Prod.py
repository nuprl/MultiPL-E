def sum_Of_Subarray_Prod(arr):
	'''
	Write a python function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subarrays/
	'''
	pass

def check(candidate):
	assert candidate([1,2,3]) == 20
	assert candidate([1,2]) == 5
	assert candidate([1,2,3,4]) == 84

def test_check():
	check(sum_Of_Subarray_Prod)