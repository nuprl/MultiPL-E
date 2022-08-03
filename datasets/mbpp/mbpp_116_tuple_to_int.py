def tuple_to_int(nums):
	'''
	Write a function to convert a given tuple of positive integers into a single integer.
	'''
	pass

def check(candidate):
	assert candidate((1,2,3))==123
	assert candidate((4,5,6))==456
	assert candidate((5,6,7))==567

def test_check():
	check(tuple_to_int)