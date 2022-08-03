def find_adverbs(text):
	'''
	Write a function to find the first adverb ending with ly and its positions in a given string.
	'''
	pass

def check(candidate):
	assert candidate("Clearly, he has no excuse for such behavior.") == '0-7: Clearly'
	assert candidate("Please handle the situation carefuly") == '28-36: carefuly'
	assert candidate("Complete the task quickly") == '18-25: quickly'

def test_check():
	check(find_adverbs)