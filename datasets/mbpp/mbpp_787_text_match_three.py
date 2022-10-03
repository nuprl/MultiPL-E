def text_match_three(text):
	'''
	Write a function that matches a string that has an a followed by three 'b'.
	'''
	pass

def check(candidate):
	assert candidate("ac") == False
	assert candidate("dc") == False 
	assert candidate("abbbba") == True
	assert candidate("caacabbbba") == True

def test_check():
	check(text_match_three)