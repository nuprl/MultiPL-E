def all_Characters_Same(s) :
	'''
	Write a python function to check whether all the characters are same or not.
	'''
	pass

def check(candidate):
	assert candidate("python") == False
	assert candidate("aaa") == True
	assert candidate("data") == False

def test_check():
	check(all_Characters_Same)