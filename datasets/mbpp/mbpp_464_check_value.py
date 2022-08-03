def check_value(dict, n):
	'''
	Write a function to check if all values are same in a dictionary.
	'''
	pass

def check(candidate):
	assert candidate({'Cierra Vega': 12, 'Alden Cantrell': 12, 'Kierra Gentry': 12, 'Pierre Cox': 12},10)==False
	assert candidate({'Cierra Vega': 12, 'Alden Cantrell': 12, 'Kierra Gentry': 12, 'Pierre Cox': 12},12)==True
	assert candidate({'Cierra Vega': 12, 'Alden Cantrell': 12, 'Kierra Gentry': 12, 'Pierre Cox': 12},5)==False

def test_check():
	check(check_value)