def text_match_three(text):
	'''
	Write a function that matches a string that has an a followed by three 'b'.
	'''
	pass

def check(candidate):
	assert not candidate("ac")
	assert not candidate("dc")
	assert candidate("abbbba")
	assert candidate("caacabbbba")

def test_check():
	check(text_match_three)