from typing import List, Dict, Tuple

def subject_marks(subjectmarks: List[Tuple[str, int]]) -> List[Tuple[str, int]]:
    """
	Write a function to sort a list of tuples using the second value of each tuple.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([('English', 88), ('Science', 90), ('Maths', 97), ('Social sciences', 82)]) == [('Social sciences', 82), ('English', 88), ('Science', 90), ('Maths', 97)]
    assert candidate([('Telugu', 49), ('Hindhi', 54), ('Social', 33)]) == [('Social', 33), ('Telugu', 49), ('Hindhi', 54)]
    assert candidate([('Physics', 96), ('Chemistry', 97), ('Biology', 45)]) == [('Biology', 45), ('Physics', 96), ('Chemistry', 97)]

def test_check():
    check(subject_marks)

