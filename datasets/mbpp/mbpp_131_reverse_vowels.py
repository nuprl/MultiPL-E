def reverse_vowels(str1):
	'''
	Write a python function to reverse only the vowels of a given string (where y is not a vowel).
	'''
	pass

def check(candidate):
	assert candidate("Python") == "Python"
	assert candidate("USA") == "ASU"
	assert candidate("ab") == "ab"

def test_check():
	check(reverse_vowels)