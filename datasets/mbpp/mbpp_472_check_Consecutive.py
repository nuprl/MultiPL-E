def check_Consecutive(l):
	'''
	Write a python function to check whether the given list contains consecutive numbers or not.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3,4,5]) == True
	assert candidate([1,2,3,5,6]) == False
	assert candidate([1,2,1]) == False

def test_check():
	check(check_Consecutive)