def add_tuple(test_list, test_tup):
	'''
	Write a function to add the given tuple to the given list.
	'''
	pass

def check(candidate):
	assert candidate([5, 6, 7], (9, 10)) == [5, 6, 7, 9, 10]
	assert candidate([6, 7, 8], (10, 11)) == [6, 7, 8, 10, 11]
	assert candidate([7, 8, 9], (11, 12)) == [7, 8, 9, 11, 12]

def test_check():
	check(add_tuple)