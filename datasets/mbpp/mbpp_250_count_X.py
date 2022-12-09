def count_X(tup, x):
	'''
	Write a python function that takes in a tuple and an element and counts the occcurences of the element in the list.
	'''
	pass

def check(candidate):
	assert candidate([10, 8, 5, 2, 10, 15, 10, 8, 5, 8, 8, 2],4) == 0
	assert candidate([10, 8, 5, 2, 10, 15, 10, 8, 5, 8, 8, 2],10) == 3
	assert candidate([10, 8, 5, 2, 10, 15, 10, 8, 5, 8, 8, 2],8) == 4

def test_check():
	check(count_X)