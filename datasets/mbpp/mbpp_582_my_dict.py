def my_dict(dict1):
	'''
	Write a function to check if a dictionary is empty
	'''
	pass

def check(candidate):
	assert candidate({10})==False
	assert candidate({11})==False
	assert candidate({})==True

def test_check():
	check(my_dict)