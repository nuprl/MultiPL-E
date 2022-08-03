def sort_sublists(list1):
	'''
	Write a function to sort each sublist of strings in a given list of lists.
	'''
	pass

def check(candidate):
	assert candidate([['green', 'orange'], ['black', 'white'], ['white', 'black', 'orange']])==[['green', 'orange'], ['black', 'white'], ['black', 'orange', 'white']]
	assert candidate([['green', 'orange'], ['black'], ['green', 'orange'], ['white']])==[['green', 'orange'], ['black'], ['green', 'orange'], ['white']]
	assert candidate([['a','b'],['d','c'],['g','h'] , ['f','e']])==[['a', 'b'], ['c', 'd'], ['g', 'h'], ['e', 'f']]

def test_check():
	check(sort_sublists)