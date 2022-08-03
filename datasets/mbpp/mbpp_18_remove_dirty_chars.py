def remove_dirty_chars(string, second_string):
	'''
	Write a function to remove characters from the first string which are present in the second string.
	'''
	pass

def check(candidate):
	assert candidate("probasscurve", "pros") == 'bacuve'
	assert candidate("digitalindia", "talent") == 'digiidi'
	assert candidate("exoticmiles", "toxic") == 'emles'

def test_check():
	check(remove_dirty_chars)