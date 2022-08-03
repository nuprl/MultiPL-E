def round_and_sum(list1):
	'''
	Write a function to round every number of a given list of numbers and print the total sum multiplied by the length of the list.
	'''
	pass

def check(candidate):
	assert candidate([22.4, 4.0, -16.22, -9.10, 11.00, -12.22, 14.20, -5.20, 17.50])==243
	assert candidate([5,2,9,24.3,29])==345
	assert candidate([25.0,56.7,89.2])==513

def test_check():
	check(round_and_sum)