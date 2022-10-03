def find_remainder(arr, n):
	'''
	Write a python function to find the product of the array multiplication modulo n.
	'''
	pass

def check(candidate):
	assert candidate([ 100, 10, 5, 25, 35, 14 ],11) ==9
	assert candidate([1,1,1],1) == 0
	assert candidate([1,2,1],2) == 0

def test_check():
	check(find_remainder)