def new_tuple(test_list, test_str):
	'''
	Write a function to create a new tuple from the given string and list.
	'''
	pass

def check(candidate):
	assert candidate(["WEB", "is"], "best") == ('WEB', 'is', 'best')
	assert candidate(["We", "are"], "Developers") == ('We', 'are', 'Developers')
	assert candidate(["Part", "is"], "Wrong") == ('Part', 'is', 'Wrong')

def test_check():
	check(new_tuple)