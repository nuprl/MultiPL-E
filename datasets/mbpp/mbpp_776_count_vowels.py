def count_vowels(test_str):
	'''
	Write a function to count those characters which have vowels as their neighbors in the given string.
	'''
	pass

def check(candidate):
	assert candidate('bestinstareels') == 7
	assert candidate('partofthejourneyistheend') == 12
	assert candidate('amazonprime') == 5

def test_check():
	check(count_vowels)