def sum_range_list(list1, m, n):
	'''
	Write a function to find the sum of numbers in a list within a range specified by two indices.
	'''
	pass

def check(candidate):
	assert candidate([2,1,5,6,8,3,4,9,10,11,8,12], 8, 10) == 29
	assert candidate([2,1,5,6,8,3,4,9,10,11,8,12], 5, 7) == 16
	assert candidate([2,1,5,6,8,3,4,9,10,11,8,12], 7, 10) == 38

def test_check():
	check(sum_range_list)