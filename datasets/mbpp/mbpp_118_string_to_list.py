def string_to_list(string):
	'''
	Write a function to convert a string to a list of strings split on the space character.
	'''
	pass

def check(candidate):
	assert candidate("python programming")==['python','programming']
	assert candidate("lists tuples strings")==['lists','tuples','strings']
	assert candidate("write a program")==['write','a','program']

def test_check():
	check(string_to_list)