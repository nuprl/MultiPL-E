def multiple_to_single(L):
	'''
	Write a function to join a list of multiple integers into a single integer.
	'''
	pass

def check(candidate):
	assert candidate([11, 33, 50])==113350
	assert candidate([-1,2,3,4,5,6])==-123456
	assert candidate([10,15,20,25])==10152025

def test_check():
	check(multiple_to_single)