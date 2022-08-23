def remove_uppercase(str1):
	'''
	Write a function to remove uppercase substrings from a given string.
	'''
	pass

def check(candidate):
	assert candidate('cAstyoUrFavoRitETVshoWs') == 'cstyoravoitshos'
	assert candidate('wAtchTheinTernEtrAdIo') == 'wtchheinerntrdo'
	assert candidate('VoicESeaRchAndreComMendaTionS') == 'oiceachndreomendaion'

def test_check():
	check(remove_uppercase)