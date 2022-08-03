def replace_spaces(text):
	'''
	Write a function to replace whitespaces with an underscore and vice versa in a given string.
	'''
	pass

def check(candidate):
	assert candidate('Jumanji The Jungle') == 'Jumanji_The_Jungle'
	assert candidate('The_Avengers') == 'The Avengers'
	assert candidate('Fast and Furious') == 'Fast_and_Furious'

def test_check():
	check(replace_spaces)