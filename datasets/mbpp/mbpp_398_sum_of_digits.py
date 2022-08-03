def sum_of_digits(nums):
	'''
	Write a function to compute the sum of digits of each number of a given list.
	'''
	pass

def check(candidate):
	assert candidate([10,2,56])==14
	assert candidate([[10,20,4,5,'b',70,'a']])==19
	assert candidate([10,20,-4,5,-70])==19

def test_check():
	check(sum_of_digits)