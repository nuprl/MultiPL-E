def check_tuplex(tuplex,tuple1):
	'''
	Write a function to check whether an element exists within a tuple.
	'''
	pass

def check(candidate):
	assert candidate(["w", 3, "r", "e", "s", "o", "u", "r", "c", "e"],'r')==True
	assert candidate(["w", 3, "r", "e", "s", "o", "u", "r", "c", "e"],'5')==False
	assert candidate(["w", 3, "r", "e", "s", "o", "u", "r", "c","e"],3)==True

def test_check():
	check(check_tuplex)