from typing import List


def findRepeatedDnaSequences(s: str) -> List[str]:
    """
    The DNA sequence is composed of a series of nucleotides abbreviated as 'A', 'C', 'G', and 'T'.

    For example, "ACGAATTCCG" is a DNA sequence.

    When studying DNA, it is useful to identify repeated sequences within the DNA.
    Given a string s that represents a DNA sequence, return all the 10-letter-long sequences (substrings) that occur more than once in a DNA molecule. You may return the answer in any order.
 
    Example 1:
    Input: s = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"
    Output: ["AAAAACCCCC","CCCCCAAAAA"]
    Example 2:
    Input: s = "AAAAAAAAAAAAA"
    Output: ["AAAAAAAAAA"]

 
    Constraints:

    1 <= s.length <= 105
    s[i] is either 'A', 'C', 'G', or 'T'.

    """
    ### Canonical solution below ###
    from collections import defaultdict
    dna_counter = defaultdict(int)
    result = []

    for i in range(len(s) - 9):
        sequence = s[i:i + 10]
        dna_counter[sequence] += 1
        if dna_counter[sequence] == 2:
            result.append(sequence)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate("ACGTTGC") == []
	assert candidate("A") == []
	assert candidate(
    "AAAAAAAAAAAAA") == ["AAAAAAAAAA"]
	assert candidate("AAAAAAAAAAA") == ["AAAAAAAAAA"]
	assert candidate("ACGTTGCAAC") == []
	assert candidate("") == []
	assert candidate("AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT") == ["AAAAACCCCC","CCCCCAAAAA"]
	assert candidate("ACGTT") == []
	assert candidate("AAAAAAAAAAAA") == ["AAAAAAAAAA"]
	assert candidate("ACGT") == []
	assert candidate("ACGTACGTAC") == []
	assert candidate("AC") == []
	assert candidate("ACG") == []
	assert candidate("ACGTTG") == []
	assert candidate("ACGTTGCA") == []
	assert candidate("ACGTTGCAA") == []
	assert candidate("AAAAAAAAAAAAA") == ["AAAAAAAAAA"]
	assert candidate(
    "AAAAAAAAAAA") == ["AAAAAAAAAA"]
	assert candidate("ACGTTGCAACGTTGC") == []
	assert candidate(
    "AAAAAAAAAAAA") == ["AAAAAAAAAA"]
def test_check():
	check(findRepeatedDnaSequences)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,bit-manipulation,sliding-window,rolling-hash,hash-function
# Metadata Coverage: 100
