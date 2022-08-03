def occurance_substring(text,pattern):
	'''
	Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match.
	'''
	pass

def check(candidate):
	assert candidate('python programming, python language','python')==('python', 0, 6)
	assert candidate('python programming,programming language','programming')==('programming', 7, 18)
	assert candidate('python programming,programming language','language')==('language', 31, 39)
	assert candidate('c++ programming, c++ language','python')==None

def test_check():
	check(occurance_substring)