def wind_chill(v,t):
	'''
	Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
	'''
	pass

def check(candidate):
	assert candidate(120,35)==40
	assert candidate(40,20)==19
	assert candidate(10,8)==6

def test_check():
	check(wind_chill)