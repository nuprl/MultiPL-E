def odd_position(nums):
	'''
	Write a python function to check whether every odd index contains odd numbers of a given list.
	'''
	pass

def check(candidate):
	assert candidate([2,1,4,3,6,7,6,3]) == True
	assert candidate([4,1,2]) == True
	assert candidate([1,2,3]) == False

def test_check():
	check(odd_position)