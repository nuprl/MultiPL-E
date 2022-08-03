def removezero_ip(ip):
	'''
	Write a function to remove leading zeroes from an ip address.
	'''
	pass

def check(candidate):
	assert candidate("216.08.094.196")==('216.8.94.196')
	assert candidate("12.01.024")==('12.1.24')
	assert candidate("216.08.094.0196")==('216.8.94.196')

def test_check():
	check(removezero_ip)