def start_withp(words):
	'''
	Write a function to return two words from a list of words starting with letter 'p'.
	'''
	pass

def check(candidate):
	assert candidate(["Python PHP", "Java JavaScript", "c c++"])==('Python', 'PHP')
	assert candidate(["Python Programming","Java Programming"])==('Python','Programming')
	assert candidate(["Pqrst Pqr","qrstuv"])==('Pqrst','Pqr')

def test_check():
	check(start_withp)