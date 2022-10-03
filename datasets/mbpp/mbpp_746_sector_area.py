def sector_area(r,a):
	'''
	Write a function to find area of a sector. The function takes the radius and angle as inputs. Function should return None if the angle is larger than 360 degrees.
	'''
	pass

def check(candidate):
	assert candidate(4,45)==6.283185307179586
	assert candidate(9,45)==31.808625617596654
	assert candidate(9,361)==None

def test_check():
	check(sector_area)