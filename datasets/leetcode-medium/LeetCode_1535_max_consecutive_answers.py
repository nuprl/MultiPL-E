def max_consecutive_answers(answer_key: str, k: int) -> int:
    """
    A teacher is writing a test with n true/false questions, with 'T' denoting true and 'F' denoting false. He wants to confuse the students by maximizing the number of consecutive questions with the same answer (multiple trues or multiple falses in a row).
    You are given a string answerKey, where answerKey[i] is the original answer to the ith question. In addition, you are given an integer k, the maximum number of times you may perform the following operation:

    Change the answer key for any question to 'T' or 'F' (i.e., set answerKey[i] to 'T' or 'F').

    Return the maximum number of consecutive 'T's or 'F's in the answer key after performing the operation at most k times.
 
    Example 1:

    Input: answerKey = "TTFF", k = 2
    Output: 4
    Explanation: We can replace both the 'F's with 'T's to make answerKey = "TTTT".
    There are four consecutive 'T's.

    Example 2:

    Input: answerKey = "TFFT", k = 1
    Output: 3
    Explanation: We can replace the first 'T' with an 'F' to make answerKey = "FFFT".
    Alternatively, we can replace the second 'T' with an 'F' to make answerKey = "TFFF".
    In both cases, there are three consecutive 'F's.

    Example 3:

    Input: answerKey = "TTFTTFTT", k = 1
    Output: 5
    Explanation: We can replace the first 'F' to make answerKey = "TTTTTFTT"
    Alternatively, we can replace the second 'F' to make answerKey = "TTFTTTTT". 
    In both cases, there are five consecutive 'T's.

 
    Constraints:

    n == answerKey.length
    1 <= n <= 5 * 104
    answerKey[i] is either 'T' or 'F'
    1 <= k <= n

    """
    ### Canonical solution below ###
    max_len, left, T_cnt, F_cnt = 0, 0, 0, 0

    for right, c in enumerate(answer_key):
        if c == 'T':
            T_cnt += 1
        else:
            F_cnt += 1

        if min(T_cnt, F_cnt) > k:
            if answer_key[left] == 'T':
                T_cnt -= 1
            else:
                F_cnt -= 1
            left += 1
        else:
            max_len = max(max_len, T_cnt + F_cnt)

    return max_len




### Unit tests below ###
def check(candidate):
	assert candidate("TTTTTTTTTT", 2) == 10
	assert candidate("TFFT", 1) == 3
	assert candidate("TFFTFFF", 1) == 6
	assert candidate("FFFTFFF", 1) == 7
	assert candidate("TTTTTFFFF", 2) == 7
	assert candidate("TFFFFFFF", 3) == 8
	assert candidate("TTTFTT", 2) == 6
	assert candidate("FFTTTTFTT", 3) == 9
	assert candidate("TTTT", 0) == 4
	assert candidate("FFFFFFFFF", 2) == 9
	assert candidate("FFFTTT", 3) == 6
	assert candidate("TFTFTTTFFT", 1) == 5
	assert candidate("TFTFFTTT", 2) == 6
	assert candidate("TTTFTTTT", 3) == 8
	assert candidate("TTFTTFTT", 3) == 8
	assert candidate("TTTFFF", 3) == 6
	assert candidate("FFTTTT", 1) == 5
	assert candidate("FFF", 1) == 3
	assert candidate("TFTTFFTFFTFTTFFT", 1) == 5
	assert candidate("TFTTTFFT", 1) == 5
	assert candidate("FFTTTTFTT", 6) == 9
	assert candidate("TTTFFFF", 2) == 6
	assert candidate("TTFF", 2) == 4
	assert candidate("FFFF", 0) == 4
	assert candidate("TTFTTFTT", 1) == 5
	assert candidate("TFFTFFTFFTTTFTF", 2) == 8
	assert candidate("T", 1) == 1
	assert candidate("FTTT", 1) == 4
	assert candidate("TFFFTTTT", 4) == 8
	assert candidate("TFFFTTTT", 1) == 5
	assert candidate("F", 1) == 1
	assert candidate("TTTF", 1) == 4
	assert candidate("TFTFTTTFFT", 3) == 8
	assert candidate("TTTFFFF", 3) == 7
	assert candidate("FFTTTTFTT", 5) == 9
	assert candidate("TTTTF", 1) == 5
	assert candidate("FFTTTTFTT", 4) == 9
	assert candidate("TTTTTTTTT", 2) == 9
	assert candidate("TTTFTT", 1) == 6
	assert candidate("TFFTTFTF", 1) == 4
	assert candidate("TFFF", 3) == 4
	assert candidate("TTFTTFTT", 2) == 8
	assert candidate("TTT", 1) == 3
	assert candidate("FFTTF", 2) == 5
	assert candidate("TTTFTTT", 1) == 7
	assert candidate("FFTF", 2) == 4
	assert candidate("TFFFTTTT", 2) == 6
def test_check():
	check(max_consecutive_answers)
# Metadata Difficulty: Medium
# Metadata Topics: string,binary-search,sliding-window,prefix-sum
# Metadata Coverage: 100
