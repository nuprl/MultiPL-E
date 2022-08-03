def remove_odd(l):
	'''
	Write a python function to remove odd numbers from a given list.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3]) == [2]
	assert candidate([2,4,6]) == [2,4,6]
	assert candidate([10,20,3]) == [10,20]

def test_check():
	check(remove_odd)