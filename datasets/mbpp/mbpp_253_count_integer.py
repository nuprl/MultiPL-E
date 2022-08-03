def count_integer(list1):
	'''
	Write a python function that returns the number of integer elements in a given list.
	'''
	pass

def check(candidate):
	assert candidate([1,2,'abc',1.2]) == 2
	assert candidate([1,2,3]) == 3
	assert candidate([1,1.2,4,5.1]) == 2

def test_check():
	check(count_integer)