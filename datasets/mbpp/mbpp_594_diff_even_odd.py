def diff_even_odd(list1):
	'''
	Write a function to find the difference of the first even and first odd number of a given list.
	'''
	pass

def check(candidate):
	assert candidate([1,3,5,7,4,1,6,8])==3
	assert candidate([1,2,3,4,5,6,7,8,9,10])==1
	assert candidate([1,5,7,9,10])==9

def test_check():
	check(diff_even_odd)