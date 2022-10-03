from typing import List, Dict, Tuple

def wind_chill(v: int, t: int) -> int:
    """
	Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(120, 35) == 40
    assert candidate(40, 20) == 19
    assert candidate(10, 8) == 6

def test_check():
    check(wind_chill)

