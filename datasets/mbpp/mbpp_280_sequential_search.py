def sequential_search(dlist, item):
	'''
	Write a function that takes in an array and element and returns a tuple containing a boolean that indicates if the element is in the array and the index position of the element (or -1 if the element is not found).
	'''
	pass

def check(candidate):
	assert candidate([11,23,58,31,56,77,43,12,65,19],31) == (True, 3)
	assert candidate([12, 32, 45, 62, 35, 47, 44, 61],61) == (True, 7)
	assert candidate([9, 10, 17, 19, 22, 39, 48, 56],48) == (True, 6)

def test_check():
	check(sequential_search)