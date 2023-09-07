from typing import List, Union


def convert_temperature(celsius: Union[int, float]) -> List[Union[int, float]]:
    """
    You are given a non-negative floating point number rounded to two decimal places celsius, that denotes the temperature in Celsius.
    You should convert Celsius into Kelvin and Fahrenheit and return it as an array ans = [kelvin, fahrenheit].
    Return the array ans. Answers within 10-5 of the actual answer will be accepted.
    Note that:

    Kelvin = Celsius + 273.15
    Fahrenheit = Celsius * 1.80 + 32.00

 
    Example 1:

    Input: celsius = 36.50
    Output: [309.65000,97.70000]
    Explanation: Temperature at 36.50 Celsius converted in Kelvin is 309.65 and converted in Fahrenheit is 97.70.

    Example 2:

    Input: celsius = 122.11
    Output: [395.26000,251.79800]
    Explanation: Temperature at 122.11 Celsius converted in Kelvin is 395.26 and converted in Fahrenheit is 251.798.

 
    Constraints:

    0 <= celsius <= 1000

    """
    ### Canonical solution below ###
    kelvin = celsius + 273.15
    fahrenheit = celsius * 1.8 + 32
    return [kelvin, fahrenheit]




### Unit tests below ###
def check(candidate):
	assert candidate(0.25) == [273.4, 32.45]
	assert candidate(500) == [773.15, 932]
	assert candidate(36.5) == [309.65, 97.7]
	assert candidate(100.56) == [373.71, 213.008]
	assert candidate(-10) == [263.15, 14]
	assert candidate(250) == [523.15, 482]
	assert candidate(50) == [323.15, 122]
	assert candidate(333.33) == [606.48, 631.994]
	assert candidate(-5) == [268.15, 23]
	assert candidate(55.55) == [328.7, 131.99]
	assert candidate(0.5) == [273.65, 32.9]
	assert candidate(2) == [275.15, 35.6]
	assert candidate(100) == [373.15, 212]
	assert candidate(1000) == [1273.15, 1832]
	assert candidate(750) == [1023.15, 1382]
	assert candidate(122.11) == [395.26, 251.798]
	assert candidate(1) == [274.15, 33.8]
	assert candidate(10) == [283.15, 50]
	assert candidate(0) == [273.15, 32]
	assert candidate(222.22) == [495.37, 431.996]
def test_check():
	check(convert_temperature)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100
