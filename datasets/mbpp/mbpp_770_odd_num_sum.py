def odd_num_sum(n) :
	'''
	Write a python function to find the sum of fourth power of first n odd natural numbers.
	'''
	pass

def check(candidate):
	assert candidate(2) == 82
	assert candidate(3) == 707
	assert candidate(4) == 3108

def test_check():
	check(odd_num_sum)