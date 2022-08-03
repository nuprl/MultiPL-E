def text_starta_endb(text):
	'''
	Write a function that matches a string that has an 'a' followed by anything, ending in 'b'.
	'''
	pass

def check(candidate):
	assert candidate("aabbbb")
	assert not candidate("aabAbbbc")
	assert not candidate("accddbbjjj")

def test_check():
	check(text_starta_endb)