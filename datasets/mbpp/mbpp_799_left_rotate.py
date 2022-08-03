def left_rotate(n,d):
	'''
	Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit.
	'''
	pass

def check(candidate):
	assert candidate(16,2) == 64
	assert candidate(10,2) == 40
	assert candidate(99,3) == 792
	assert candidate(99,3) == 792
	assert candidate(0b0001,3) == 0b1000
	assert candidate(0b0101,3) == 0b101000
	assert candidate(0b11101,3) == 0b11101000

def test_check():
	check(left_rotate)