def next_power_of_2(n):
	'''
	Write a python function to find the smallest power of 2 greater than or equal to n.
	'''
	pass

def check(candidate):
	assert candidate(0) == 1
	assert candidate(5) == 8
	assert candidate(17) == 32

def test_check():
	check(next_power_of_2)