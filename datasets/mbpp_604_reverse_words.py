def reverse_words(s):
	'''
	Write a function to reverse words seperated by spaces in a given string.
	'''
	pass

def check(candidate):
	assert candidate("python program")==("program python")
	assert candidate("java language")==("language java")
	assert candidate("indian man")==("man indian")

def test_check():
	check(reverse_words)