def is_majority(arr, n, x):
	'''
	Write a function that takes in a sorted array, its length (n), and an element and returns whether the element is the majority element in the given sorted array. (The majority element is the element that occurs more than n/2 times.)
	'''
	pass

def check(candidate):
	assert candidate([1, 2, 3, 3, 3, 3, 10], 7, 3) == True
	assert candidate([1, 1, 2, 4, 4, 4, 6, 6], 8, 4) == False
	assert candidate([1, 1, 1, 2, 2], 5, 1) == True
	assert candidate([1, 1, 2, 2], 5, 1) == False

def test_check():
	check(is_majority)