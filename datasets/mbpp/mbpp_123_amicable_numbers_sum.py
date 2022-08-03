def amicable_numbers_sum(limit):
	'''
	Write a function to sum all amicable numbers from 1 to a specified number.
	'''
	pass

def check(candidate):
	assert candidate(999)==504
	assert candidate(9999)==31626
	assert candidate(99)==0

def test_check():
	check(amicable_numbers_sum)