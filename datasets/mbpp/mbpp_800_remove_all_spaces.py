def remove_all_spaces(text):
	'''
	Write a function to remove all whitespaces from a string.
	'''
	pass

def check(candidate):
	assert candidate('python  program')==('pythonprogram')
	assert candidate('python   programming    language')==('pythonprogramminglanguage')
	assert candidate('python                     program')==('pythonprogram')
	assert candidate('   python                     program')=='pythonprogram'

def test_check():
	check(remove_all_spaces)