def toggle_middle_bits(n):
	'''
	Write a python function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
	'''
	pass

def check(candidate):
	assert candidate(9) == 15
	assert candidate(10) == 12
	assert candidate(11) == 13
	assert candidate(0b1000001) == 0b1111111
	assert candidate(0b1001101) == 0b1110011

def test_check():
	check(toggle_middle_bits)