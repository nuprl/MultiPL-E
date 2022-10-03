from typing import List, Dict, Tuple

def sector_area(r: int, a: int) -> Optional[float]:
    """
	Write a function to find area of a sector. The function takes the radius and angle as inputs. Function should return None if the angle is larger than 360 degrees.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(4, 45) == 6.283185307179586
    assert candidate(9, 45) == 31.808625617596654
    assert candidate(9, 361) == None

def test_check():
    check(sector_area)

