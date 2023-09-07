from typing import List


def fizzBuzz(n: int) -> List[str]:
    """
    Given an integer n, return a string array answer (1-indexed) where:

    answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
    answer[i] == "Fizz" if i is divisible by 3.
    answer[i] == "Buzz" if i is divisible by 5.
    answer[i] == i (as a string) if none of the above conditions are true.

 
    Example 1:
    Input: n = 3
    Output: ["1","2","Fizz"]
    Example 2:
    Input: n = 5
    Output: ["1","2","Fizz","4","Buzz"]
    Example 3:
    Input: n = 15
    Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]

 
    Constraints:

    1 <= n <= 104

    """
    ### Canonical solution below ###
    result = []
    for i in range(1, n + 1):
        if i % 15 == 0:
            result.append("FizzBuzz")
        elif i % 3 == 0:
            result.append("Fizz")
        elif i % 5 == 0:
            result.append("Buzz")
        else:
            result.append(str(i))
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(0) == []
	assert candidate(5) == ["1", "2", "Fizz", "4", "Buzz"]
	assert candidate(1) == ["1"]
	assert candidate(10) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz"]
	assert candidate(13) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13"]
	assert candidate(12) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz"]
	assert candidate(7) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7"]
	assert candidate(2) == ["1", "2"]
	assert candidate(9) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz"]
	assert candidate(11) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11"]
	assert candidate(3) == ["1", "2", "Fizz"]
	assert candidate(6) == ["1", "2", "Fizz", "4", "Buzz", "Fizz"]
	assert candidate(4) == ["1", "2", "Fizz", "4"]
	assert candidate(17) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16", "17"]
	assert candidate(8) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8"]
	assert candidate(15) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
	assert candidate(14) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14"]
	assert candidate(16) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16"]
def test_check():
	check(fizzBuzz)
# Metadata Difficulty: Easy
# Metadata Topics: math,string,simulation
# Metadata Coverage: 100
