def count(lst):
	'''
	Write a python function to count true booleans in the given list.
	'''
	pass

def check(candidate):
	assert candidate([True,False,True]) == 2
	assert candidate([False,False]) == 0
	assert candidate([True,True,True]) == 3

def test_check():
	check(count)