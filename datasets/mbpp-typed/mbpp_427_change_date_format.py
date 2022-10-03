from typing import List, Dict, Tuple

def change_date_format(dt: str) -> str:
    """
	Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('2026-01-02') == '02-01-2026'
    assert candidate('2020-11-13') == '13-11-2020'
    assert candidate('2021-04-26') == '26-04-2021'

def test_check():
    check(change_date_format)

