def replace_blank(str1,char):
	'''
	Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string.
	'''
	pass

def check(candidate):
	assert candidate("hello people",'@')==("hello@people")
	assert candidate("python program language",'$')==("python$program$language")
	assert candidate("blank space","-")==("blank-space")

def test_check():
	check(replace_blank)