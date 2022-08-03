def toggle_string(string):
	'''
	Write a function to toggle the case of all characters in a string.
	'''
	pass

def check(candidate):
	assert candidate("Python")==("pYTHON")
	assert candidate("Pangram")==("pANGRAM")
	assert candidate("LIttLE")==("liTTle")

def test_check():
	check(toggle_string)