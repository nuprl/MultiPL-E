def odd_length_sum(arr):
	'''
	Write a python function to find the sum of all odd length subarrays. https://www.geeksforgeeks.org/sum-of-all-odd-length-subarrays/
	'''
	pass

def check(candidate):
	assert candidate([1,2,4]) == 14
	assert candidate([1,2,1,2]) == 15
	assert candidate([1,7]) == 8

def test_check():
	check(odd_length_sum)