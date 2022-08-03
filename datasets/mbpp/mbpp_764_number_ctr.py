def number_ctr(str):
	'''
	Write a python function to count number of digits in a given string.
	'''
	pass

def check(candidate):
	assert candidate('program2bedone') == 1
	assert candidate('3wonders') == 1
	assert candidate('123') == 3
	assert candidate('3wond-1ers2') == 3

def test_check():
	check(number_ctr)