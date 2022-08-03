def parabola_directrix(a, b, c):
	'''
	Write a function to find the directrix of a parabola.
	'''
	pass

def check(candidate):
	assert candidate(5,3,2)==-198
	assert candidate(9,8,4)==-2336
	assert candidate(2,4,6)==-130

def test_check():
	check(parabola_directrix)