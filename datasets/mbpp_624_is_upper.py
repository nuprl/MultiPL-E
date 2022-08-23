def is_upper(string):
	'''
	Write a python function to convert a given string to uppercase.
	'''
	pass

def check(candidate):
	assert candidate("person") =="PERSON"
	assert candidate("final") == "FINAL"
	assert candidate("Valid") == "VALID"

def test_check():
	check(is_upper)