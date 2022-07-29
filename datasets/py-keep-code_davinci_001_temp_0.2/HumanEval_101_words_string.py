from typing import List

def words_string(s: str) -> List[str]:
    """
    You will be given a string of words separated by commas or spaces. Your task is
    to split the string into words and return an array of the words.
    
    For example:
    words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
    words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
    """
    return s.split(', ')


def check(candidate):
    assert candidate('Hi, my name is John') == ['Hi', 'my', 'name', 'is', 'John']
    assert candidate('One, two, three, four, five, six') == ['One', 'two', 'three', 'four', 'five', 'six']
    assert candidate('Hi, my name') == ['Hi', 'my', 'name']
    assert candidate('One,, two, three, four, five, six,') == ['One', 'two', 'three', 'four', 'five', 'six']
    assert candidate('') == []
    assert candidate('ahmed     , gamal') == ['ahmed', 'gamal']

def test_check():
    check(words_string)

test_check()
