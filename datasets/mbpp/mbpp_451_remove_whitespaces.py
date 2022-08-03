def remove_whitespaces(text1):
	'''
	Write a function to remove all whitespaces from the given string.
	'''
	pass

def check(candidate):
	assert candidate(' Google    Flutter ') == 'GoogleFlutter'
	assert candidate(' Google    Dart ') == 'GoogleDart'
	assert candidate(' iOS    Swift ') == 'iOSSwift'

def test_check():
	check(remove_whitespaces)