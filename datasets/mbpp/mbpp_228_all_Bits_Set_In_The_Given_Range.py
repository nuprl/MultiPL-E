def all_Bits_Set_In_The_Given_Range(n,l,r):
	'''
	Write a python function to check whether all the bits are unset in the given range or not.
	'''
	pass

def check(candidate):
	assert candidate(4,1,2) == True
	assert candidate(17,2,4) == True
	assert candidate(39,4,6) == False

def test_check():
	check(all_Bits_Set_In_The_Given_Range)