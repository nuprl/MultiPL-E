def get_Char(strr):
	'''
	Write a python function to find the character made by adding the ASCII value of all the characters of the given string modulo 26.
	'''
	pass

def check(candidate):
	assert candidate("abc") == "f"
	assert candidate("gfg") == "t"
	assert candidate("ab") == "c"

def test_check():
	check(get_Char)