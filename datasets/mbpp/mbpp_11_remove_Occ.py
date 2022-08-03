def remove_Occ(s,ch):
	'''
	Write a python function to remove first and last occurrence of a given character from the string.
	'''
	pass

def check(candidate):
	assert candidate("hello","l") == "heo"
	assert candidate("abcda","a") == "bcd"
	assert candidate("PHP","P") == "H"

def test_check():
	check(remove_Occ)