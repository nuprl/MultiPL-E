def digit_distance_nums(n1, n2):
	'''
	Write a python function to find the sum of the per-digit difference between two integers.
	'''
	pass

def check(candidate):
	assert candidate(1,2) == 1
	assert candidate(23,56) == 6
	assert candidate(123,256) == 7

def test_check():
	check(digit_distance_nums)