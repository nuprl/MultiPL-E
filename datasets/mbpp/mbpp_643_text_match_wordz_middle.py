def text_match_wordz_middle(text):
	'''
	Write a function that checks if a strings contains 'z', except at the start and end of the word.
	'''
	pass

def check(candidate):
	assert candidate("pythonzabc.")==True
	assert candidate("zxyabc.")==False
	assert candidate("  lang  .")==False

def test_check():
	check(text_match_wordz_middle)