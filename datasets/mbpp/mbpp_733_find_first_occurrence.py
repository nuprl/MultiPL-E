def find_first_occurrence(A, x):
	'''
	Write a function to find the index of the first occurrence of a given number in a sorted array.
	'''
	pass

def check(candidate):
	assert candidate([2, 5, 5, 5, 6, 6, 8, 9, 9, 9], 5) == 1
	assert candidate([2, 3, 5, 5, 6, 6, 8, 9, 9, 9], 5) == 2
	assert candidate([2, 4, 1, 5, 6, 6, 8, 9, 9, 9], 6) == 4

def test_check():
	check(find_first_occurrence)