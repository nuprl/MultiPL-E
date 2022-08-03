def word_len(s):
	'''
	Write a python function to check whether the length of the word is odd or not.
	'''
	pass

def check(candidate):
	assert candidate("Hadoop") == False
	assert candidate("great") == True
	assert candidate("structure") == True

def test_check():
	check(word_len)