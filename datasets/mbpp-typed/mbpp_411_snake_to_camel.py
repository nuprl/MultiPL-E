from typing import List, Dict, Tuple

def snake_to_camel(word: str) -> str:
    """
	Write a function to convert the given snake case string to camel case string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('android_tv') == 'AndroidTv'
    assert candidate('google_pixel') == 'GooglePixel'
    assert candidate('apple_watch') == 'AppleWatch'

def test_check():
    check(snake_to_camel)

