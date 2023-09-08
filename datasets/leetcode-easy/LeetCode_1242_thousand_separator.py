def thousand_separator(n: int) -> str:
    """
    Given an integer n, add a dot (".") as the thousands separator and return it in string format.
 
    Example 1:

    Input: n = 987
    Output: "987"

    Example 2:

    Input: n = 1234
    Output: "1.234"

 
    Constraints:

    0 <= n <= 231 - 1

    """
    ### Canonical solution below ###
    result = str(n)
    count = 0
    for i in range(len(result) - 1, 0, -1):
        count += 1
        if count % 3 == 0:
            result = result[:i] + '.' + result[i:]
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(10000000) == "10.000.000"
	assert candidate(1000000) == "1.000.000"
	assert candidate(123456789012345) == "123.456.789.012.345"
	assert candidate(12) == "12"
	assert candidate(1000) == "1.000"
	assert candidate(12345) == "12.345"
	assert candidate(101112131415) == "101.112.131.415"
	assert candidate(1000000000) == "1.000.000.000"
	assert candidate(100000) == "100.000"
	assert candidate(987654321) == "987.654.321"
	assert candidate(123) == "123"
	assert candidate(99999999999999999) == "99.999.999.999.999.999"
	assert candidate(999999999999) == "999.999.999.999"
	assert candidate(1) == "1"
	assert candidate(100) == "100"
	assert candidate(0) == "0"
	assert candidate(12345678901) == "12.345.678.901"
	assert candidate(23) == "23"
	assert candidate(9876543210) == "9.876.543.210"
	assert candidate(9876543210987654321) == "9.876.543.210.987.654.321"
	assert candidate(123456789) == "123.456.789"
	assert candidate(10000000000000) == "10.000.000.000.000"
	assert candidate(12345678901234) == "12.345.678.901.234"
	assert candidate(100000000) == "100.000.000"
	assert candidate(123456) == "123.456"
	assert candidate(1000000000000) == "1.000.000.000.000"
	assert candidate(1234567) == "1.234.567"
	assert candidate(101112131415161718192021222324252627282930) == "101.112.131.415.161.718.192.021.222.324.252.627.282.930"
	assert candidate(10000) == "10.000"
	assert candidate(1234567890) == "1.234.567.890"
	assert candidate(12345678) == "12.345.678"
	assert candidate(1234) == "1.234"
	assert candidate(987) == "987"
	assert candidate(10) == "10"
	assert candidate(10000000000) == "10.000.000.000"
def test_check():
	check(thousand_separator)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
