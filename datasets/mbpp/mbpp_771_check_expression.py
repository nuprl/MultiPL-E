def check_expression(exp):
	'''
	Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
	'''
	pass

def check(candidate):
	assert candidate("{()}[{}]") == True
	assert candidate("{()}[{]") == False
	assert candidate("{()}[{}][]({})") == True

def test_check():
	check(check_expression)