def index_minimum(test_list):
	'''
	Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value.
	'''
	pass

def check(candidate):
	assert candidate([('Rash', 143), ('Manjeet', 200), ('Varsha', 100)]) == 'Varsha'
	assert candidate([('Yash', 185), ('Dawood', 125), ('Sanya', 175)]) == 'Dawood'
	assert candidate([('Sai', 345), ('Salman', 145), ('Ayesha', 96)]) == 'Ayesha'

def test_check():
	check(index_minimum)