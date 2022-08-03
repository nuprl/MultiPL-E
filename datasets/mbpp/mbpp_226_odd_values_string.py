def odd_values_string(str):
	'''
	Write a python function to remove the characters which have odd index values of a given string.
	'''
	pass

def check(candidate):
	assert candidate('abcdef') == 'ace'
	assert candidate('python') == 'pto'
	assert candidate('data') == 'dt'
	assert candidate('lambs') == 'lms'

def test_check():
	check(odd_values_string)