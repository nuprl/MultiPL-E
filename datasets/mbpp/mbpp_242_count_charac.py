def count_charac(str1):
	'''
	Write a function to count the total number of characters in a string.
	'''
	pass

def check(candidate):
	assert candidate("python programming")==18
	assert candidate("language")==8
	assert candidate("words")==5

def test_check():
	check(count_charac)