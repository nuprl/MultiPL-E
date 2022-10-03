def text_starta_endb(text):
	'''
	Write a function that matches a string that has an 'a' followed by anything, ending in 'b'.
	'''
	pass

def check(candidate):
	assert candidate("aabbbb") == True
	assert candidate("aabAbbbc") == False
	assert candidate("accddbbjjj") == False

def test_check():
	check(text_starta_endb)