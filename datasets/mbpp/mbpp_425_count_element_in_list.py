def count_element_in_list(list1, x):
	'''
	Write a function to count the number of sublists containing a particular element.
	'''
	pass

def check(candidate):
	assert candidate([[1, 3], [5, 7], [1, 11], [1, 15, 7]],1)==3
	assert candidate([['A', 'B'], ['A', 'C'], ['A', 'D', 'E'], ['B', 'C', 'D']],'A')==3
	assert candidate([['A', 'B'], ['A', 'C'], ['A', 'D', 'E'], ['B', 'C', 'D']],'E')==1

def test_check():
	check(count_element_in_list)