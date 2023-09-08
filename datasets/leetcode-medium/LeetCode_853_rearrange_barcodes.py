from typing import List


def rearrange_barcodes(barcodes: List[int]) -> List[int]:
    """
    In a warehouse, there is a row of barcodes, where the ith barcode is barcodes[i].
    Rearrange the barcodes so that no two adjacent barcodes are equal. You may return any answer, and it is guaranteed an answer exists.
 
    Example 1:
    Input: barcodes = [1,1,1,2,2,2]
    Output: [2,1,2,1,2,1]
    Example 2:
    Input: barcodes = [1,1,1,1,2,2,3,3]
    Output: [1,3,1,3,1,2,1,2]

 
    Constraints:

    1 <= barcodes.length <= 10000
    1 <= barcodes[i] <= 10000

    """
    ### Canonical solution below ###
    from heapq import heappush, heappop
    count = {}
    for barcode in barcodes:
        if barcode not in count:
            count[barcode] = 0
        count[barcode] += 1

    pq = []
    for key, value in count.items():
        heappush(pq, (-value, key))

    idx = 0
    while pq:
        curr = heappop(pq)
        while curr[0] < 0:
            barcodes[idx] = curr[1]
            curr = (curr[0] + 1, curr[1])
            idx += 2
            if idx >= len(barcodes):
                idx = 1
    return barcodes




### Unit tests below ###
def check(candidate):
	assert candidate([2,1,1]) == [1,2,1]
	assert candidate([3, 1, 3, 1]) == [1, 3, 1, 3]
	assert candidate([1,1,1,2,2,2]) == [1,2,1,2,1,2]
	assert candidate([1]) == [1]
	assert candidate([2, 2, 2, 1, 1]) == [2, 1, 2, 1, 2]
	assert candidate(
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == [
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ]
def test_check():
	check(rearrange_barcodes)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,greedy,sorting,heap-priority-queue,counting
# Metadata Coverage: 100
