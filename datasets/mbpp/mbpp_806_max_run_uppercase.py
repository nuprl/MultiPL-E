def max_run_uppercase(test_str):
	'''
	Write a function to find maximum run of uppercase characters in the given string.
	'''
	pass

def check(candidate):
	assert candidate('GeMKSForGERksISBESt') == 5
	assert candidate('PrECIOusMOVemENTSYT') == 6
	assert candidate('GooGLEFluTTER') == 4

def test_check():
	check(max_run_uppercase)