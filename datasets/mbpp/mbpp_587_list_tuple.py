def list_tuple(listx):
	'''
	Write a function to convert a list to a tuple.
	'''
	pass

def check(candidate):
	assert candidate([5, 10, 7, 4, 15, 3])==(5, 10, 7, 4, 15, 3)
	assert candidate([2, 4, 5, 6, 2, 3, 4, 4, 7])==(2, 4, 5, 6, 2, 3, 4, 4, 7)
	assert candidate([58,44,56])==(58,44,56)

def test_check():
	check(list_tuple)