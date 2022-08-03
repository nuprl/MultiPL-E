def snake_to_camel(word):
	'''
	Write a function to convert the given snake case string to camel case string.
	'''
	pass

def check(candidate):
	assert candidate('android_tv') == 'AndroidTv'
	assert candidate('google_pixel') == 'GooglePixel'
	assert candidate('apple_watch') == 'AppleWatch'

def test_check():
	check(snake_to_camel)