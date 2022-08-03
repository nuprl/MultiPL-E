def right_insertion(a, x):
	'''
	Write a function to locate the right insertion point for a specified value in sorted order.
	'''
	pass

def check(candidate):
	assert candidate([1,2,4,5],6)==4
	assert candidate([1,2,4,5],3)==2
	assert candidate([1,2,4,5],7)==4

def test_check():
	check(right_insertion)