def loss_amount(actual_cost,sale_amount):
	'''
	Write a function that gives loss amount on a sale if the given amount has loss else return 0.
	'''
	pass

def check(candidate):
	assert candidate(1500,1200)==0
	assert candidate(100,200)==100
	assert candidate(2000,5000)==3000

def test_check():
	check(loss_amount)