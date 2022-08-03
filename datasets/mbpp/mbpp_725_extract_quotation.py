def extract_quotation(text1):
	'''
	Write a function to extract values between quotation marks " " of the given string.
	'''
	pass

def check(candidate):
	assert candidate('Cortex "A53" Based "multi" tasking "Processor"') == ['A53', 'multi', 'Processor']
	assert candidate('Cast your "favorite" entertainment "apps"') == ['favorite', 'apps']
	assert candidate('Watch content "4k Ultra HD" resolution with "HDR 10" Support') == ['4k Ultra HD', 'HDR 10']
	assert candidate("Watch content '4k Ultra HD' resolution with 'HDR 10' Support") == []

def test_check():
	check(extract_quotation)