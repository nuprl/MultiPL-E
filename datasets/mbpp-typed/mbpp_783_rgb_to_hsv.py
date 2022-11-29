from typing import List, Dict, Tuple

def rgb_to_hsv(r: int, g: int, b: int) -> List[float]:
    """
	Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(255, 255, 255) == [0.0, 0.0, 100.0]
    assert candidate(0, 215, 0) == [120.0, 100.0, 84.31372549019608]
    assert candidate(10, 215, 110) == [149.26829268292684, 95.34883720930233, 84.31372549019608]

def test_check():
    check(rgb_to_hsv)

