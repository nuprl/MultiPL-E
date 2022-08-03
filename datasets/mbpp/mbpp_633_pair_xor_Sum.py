def pair_xor_Sum(arr,n) :
	'''
	Write a python function to find the sum of xor of all pairs of numbers in the given list.
	'''
	pass

def check(candidate):
	assert candidate([5,9,7,6],4) == 47
	assert candidate([7,3,5],3) == 12
	assert candidate([7,3],2) == 4

def test_check():
	check(pair_xor_Sum)