def is_product_even(arr):
	'''
	Write a function to check whether the product of numbers in a list is even or not.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3]) == True
	assert candidate([1,2,1,4]) == True
	assert candidate([1,1]) == False

def test_check():
	check(is_product_even)