def dog_age(h_age):
	'''
	Write a function to calculate a dog's age in dog's years.
	'''
	pass

def check(candidate):
	assert candidate(12)==61
	assert candidate(15)==73
	assert candidate(24)==109

def test_check():
	check(dog_age)