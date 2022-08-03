def Split(list):
	'''
	Write a python function to find even numbers from a list of numbers.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3,4,5]) == [2,4]
	assert candidate([4,5,6,7,8,0,1]) == [4,6,8,0]
	assert candidate ([8,12,15,19]) == [8,12]

def test_check():
	check(Split)