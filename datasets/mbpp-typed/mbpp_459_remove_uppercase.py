from typing import List, Dict, Tuple

def remove_uppercase(str1: str) -> str:
    """
	Write a function to remove uppercase substrings from a given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('cAstyoUrFavoRitETVshoWs') == 'cstyoravoitshos'
    assert candidate('wAtchTheinTernEtrAdIo') == 'wtchheinerntrdo'
    assert candidate('VoicESeaRchAndreComMendaTionS') == 'oiceachndreomendaion'

def test_check():
    check(remove_uppercase)

