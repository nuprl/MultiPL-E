def int_to_mini_roman(number: int) -> str:
    """
    Given a positive integer, obtain its roman numeral equivalent as a string,
    and return it in lowercase.
    Restrictions: 1 <= num <= 1000

    Examples:
    >>> int_to_mini_roman(19) == 'xix'
    >>> int_to_mini_roman(152) == 'clii'
    >>> int_to_mini_roman(426) == 'cdxxvi'
    """
    if not isinstance(number, int):
        raise TypeError('Input must be an integer.')
    if not 1 <= number <= 1000:
        raise ValueError('Input must be between 1 and 1000.')

    # The following are the roman numeral equivalents of the numbers 1 to 10.
    # The first digit in each pair is the number of times the smaller number
    # appears in the roman numeral equivalent of the given number.
    # The second digit is the roman numeral equivalent of the smaller number.
    roman_numerals = [
        (0, ''),
        (1, 'i'),
        (2, 'ii'),
        (3, 'iii'),
        (4, 'iv'),
        (5, 'v'),
        (6, 'vi'),
        (7, 'vii'),
        (8, 'viii'),
        (9, 'ix'),
        (10, 'x'),
    ]

    # The following are the roman numeral equivalents of the numbers 11 to 20.
    # The first digit in each pair is the number of times the smaller number
    # appears in the roman numeral equivalent of the given number.
    # The second digit is the roman numeral equivalent of the smaller number.
    roman_numerals_11_20 = [
        (0, ''),
        (1, 'xi'),
        (2, 'xii'),
        (3, 'xiii'),
        (4, 'xiv'),
        (5, 'xv'),
        (6, 'xvi'),
        (7, 'xvii'),
        (8, 'xviii'),
        (9, 'xix'),
        (10, 'xx'),
    ]

    # The following are the roman numeral equivalents of the numbers 21 to 30.
    # The first digit in each pair is the number of times the smaller number
    # appears in the roman numeral equivalent of the given number.
    # The second digit is the roman numeral equivalent of the smaller number.
    roman_numerals_21_30 = [
        (0, ''),
        (1

def check(candidate):
    assert candidate(19) == 'xix'
    assert candidate(152) == 'clii'
    assert candidate(251) == 'ccli'
    assert candidate(426) == 'cdxxvi'
    assert candidate(500) == 'd'
    assert candidate(1) == 'i'
    assert candidate(4) == 'iv'
    assert candidate(43) == 'xliii'
    assert candidate(90) == 'xc'
    assert candidate(94) == 'xciv'
    assert candidate(532) == 'dxxxii'
    assert candidate(900) == 'cm'
    assert candidate(994) == 'cmxciv'
    assert candidate(1000) == 'm'

def test_check():
    check(int_to_mini_roman)

test_check()
