def text_match_wordz(text):
	'''
	Write a function that matches a word containing 'z'.
	'''
	pass

def check(candidate):
	assert candidate("pythonz.")==True
	assert candidate("xyz.")==True
	assert candidate("  lang  .")==False

def test_check():
	check(text_match_wordz)