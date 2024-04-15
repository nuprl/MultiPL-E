from typing import List

def maximumScore(nums: List[int], k: int) -> int:
    """
    You are given an array nums of n positive integers and an integer k.
    
    Initially, you start with a score of 1. You have to maximize your score by applying the following operation at most k times:
    
     * Choose any non-empty subarray nums[l, ..., r] that you haven't chosen previously.
     * Choose an element x of nums[l, ..., r] with the highest prime score. If multiple such elements exist, choose the one with the smallest index.
     * Multiply your score by x.
    
    Here, nums[l, ..., r] denotes the subarray of nums starting at index l and ending at the index r, both ends being inclusive.
    
    The prime score of an integer x is equal to the number of distinct prime factors of x. For example, the prime score of 300 is 3 since 300 = 2 * 2 * 3 * 5 * 5.
    
    Return the maximum possible score after applying at most k operations.
    
    Since the answer may be large, return it modulo 109 + 7.
    
    Example 1:
    
    Input: nums = [8,3,9,3,8], k = 2
    Output: 81
    Explanation: To get a score of 81, we can apply the following operations:
    - Choose subarray nums[2, ..., 2]. nums[2] is the only element in this subarray. Hence, we multiply the score by nums[2]. The score becomes 1 * 9 = 9.
    - Choose subarray nums[2, ..., 3]. Both nums[2] and nums[3] have a prime score of 1, but nums[2] has the smaller index. Hence, we multiply the score by nums[2]. The score becomes 9 * 9 = 81.
    It can be proven that 81 is the highest score one can obtain.
    
    Example 2:
    
    Input: nums = [19,12,14,6,10,18], k = 3
    Output: 4788
    Explanation: To get a score of 4788, we can apply the following operations:
    - Choose subarray nums[0, ..., 0]. nums[0] is the only element in this subarray. Hence, we multiply the score by nums[0]. The score becomes 1 * 19 = 19.
    - Choose subarray nums[5, ..., 5]. nums[5] is the only element in this subarray. Hence, we multiply the score by nums[5]. The score becomes 19 * 18 = 342.
    - Choose subarray nums[2, ..., 3]. Both nums[2] and nums[3] have a prime score of 2, but nums[2] has the smaller index. Hence, we multipy the score by nums[2]. The score becomes 342 * 14 = 4788.
    It can be proven that 4788 is the highest score one can obtain.
    
    
    Constraints:
    
     * 1 <= nums.length == n <= 105
     * 1 <= nums[i] <= 105
     * 1 <= k <= min(n * (n + 1) / 2, 109)
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([8, 3, 9, 3, 8], 2) == 81
    assert candidate([19, 12, 14, 6, 10, 18], 3) == 4788
    assert candidate([3289, 2832, 14858, 22011], 6) == 256720975
    assert candidate([1, 7, 11, 1, 5], 14) == 823751938
    assert candidate([1, 1, 2, 18, 1, 9, 3, 1], 32) == 346264255
    assert candidate([1, 1, 1], 2) == 1
    assert candidate([1, 2, 1, 12, 1, 3], 3) == 1728
    assert candidate([12, 5, 1, 6, 9, 1, 17, 14], 12) == 62996359
    assert candidate([1], 1) == 1
    assert candidate([1, 10, 15, 1, 3], 13) == 499978741
    assert candidate([6, 1, 13, 10, 1, 17, 6], 27) == 630596200
    assert candidate([1, 14], 1) == 14
    assert candidate([2, 1, 14, 5, 18, 1, 8, 5], 34) == 799392504
    assert candidate([5, 12, 11, 15, 10, 18], 18) == 557423913
    assert candidate([4, 1], 3) == 16
    assert candidate([1, 2, 5, 1, 10, 1, 1], 20) == 600000014
    assert candidate([13, 16, 12, 15, 12, 1, 13, 1, 18, 1], 46) == 912532739
    assert candidate([10, 11], 3) == 1100
    assert candidate([15, 16, 12, 1, 10, 14], 19) == 311972352
    assert candidate([14, 12, 5, 2, 14], 6) == 7529536
    assert candidate([1, 13, 12, 1, 9, 12, 1, 18], 31) == 846374420
    assert candidate([1, 6, 14, 10, 16], 4) == 43904
    assert candidate([14, 1, 9, 1, 10], 3) == 2744
    assert candidate([13, 1, 1, 15, 9, 1, 1], 22) == 925331761
    assert candidate([1, 17, 3, 9, 10, 17, 1, 1, 1, 11], 22) == 407065837
    assert candidate([1, 1, 1], 5) == 1
    assert candidate([1, 13, 4, 1, 1], 14) == 206765780
    assert candidate([3, 1, 3, 10, 2, 16], 16) == 996976007
    assert candidate([1, 2, 1, 1, 16, 8, 11, 6], 27) == 33977400
    assert candidate([1, 10, 13, 1, 9, 15, 1], 2) == 225
    assert candidate([18, 1], 3) == 324
    assert candidate([16], 1) == 16
    assert candidate([14, 6, 18, 10, 1, 8, 1, 17], 25) == 677968714
    assert candidate([15, 16, 12], 6) == 7776000
    assert candidate([1, 10, 1, 2], 7) == 2000000
    assert candidate([13, 1, 10, 1, 15, 6, 1, 12, 6], 10) == 650386593
    assert candidate([1, 15, 5, 1, 1, 15, 1, 1], 17) == 10486853
    assert candidate([1, 9], 2) == 81
    assert candidate([13, 8, 14, 6, 3, 14, 13, 10, 1], 21) == 247566578
    assert candidate([4], 1) == 4
    assert candidate([1, 12, 5, 1, 12], 15) == 209137175
    assert candidate([1, 5, 1, 11], 4) == 3025
    assert candidate([3, 6, 17, 1, 1, 17, 18, 12, 16, 5], 9) == 359288982
    assert candidate([2, 2, 15, 2, 15, 15], 10) == 650386593
    assert candidate([1, 12], 1) == 12
    assert candidate([2, 11, 1, 1], 2) == 121
    assert candidate([11, 15, 18, 4, 11, 7, 1, 1], 32) == 179964426
    assert candidate([10, 1, 15], 1) == 15
    assert candidate([10, 1, 1, 9, 14, 6, 4, 18, 8], 10) == 420565606
    assert candidate([6, 8], 3) == 288
    assert candidate([13, 1, 10, 6], 4) == 16900
    assert candidate([8, 10, 16, 1, 1, 1], 2) == 256
    assert candidate([11, 2, 1], 4) == 2662
    assert candidate([15], 1) == 15
    assert candidate([5, 5, 16, 12, 8, 1, 1, 7, 12], 34) == 15762264
    assert candidate([1, 1], 1) == 1
    assert candidate([3, 18, 12, 8, 1, 3, 6], 23) == 18966086
    assert candidate([13, 1, 5, 6], 8) == 14236560
    assert candidate([1, 1, 15, 1, 9, 1, 1], 23) == 929527145
    assert candidate([6, 2, 1, 17, 9, 14, 1], 25) == 808455901
    assert candidate([1, 18], 3) == 324
    assert candidate([1, 10], 2) == 100
    assert candidate([17], 1) == 17
    assert candidate([18, 13, 12, 1, 11], 8) == 537271275
    assert candidate([10, 14, 18, 6, 12, 14, 3, 13], 23) == 795923147
    assert candidate([16, 1, 14, 13, 3, 1], 6) == 9834496
    assert candidate([10, 4, 4, 3, 10, 1], 15) == 997200007
    assert candidate([2, 4, 1, 5, 14, 13, 13, 17], 19) == 241329678
    assert candidate([6, 1, 15, 1, 13], 12) == 820232542
    assert candidate([14, 13, 1, 14], 5) == 537824
    assert candidate([10, 4, 12, 12, 16, 9, 1, 18], 36) == 892891506
    assert candidate([6], 1) == 6
    assert candidate([12], 1) == 12
    assert candidate([10, 17, 17, 15, 1, 15, 1], 19) == 301460564
    assert candidate([10, 3, 1, 1, 4, 2, 14], 10) == 295359475
    assert candidate([10, 12], 3) == 1200
    assert candidate([9, 10, 2, 3, 2, 1, 11, 1, 1, 13], 49) == 900432644
    assert candidate([1, 10, 18, 18, 3, 1, 8, 1, 15, 15], 18) == 38759446
    assert candidate([15, 1, 11, 13, 16], 14) == 753886562
    assert candidate([12, 1, 6, 1, 1, 4, 8, 17, 18, 1], 2) == 324
    assert candidate([1, 1, 1, 17, 8, 18, 8, 1], 14) == 958387476
    assert candidate([7, 1, 6, 9, 11, 7, 13, 12, 1], 39) == 21295572
    assert candidate([12, 1, 1, 15, 2, 1, 1, 16, 1, 1], 8) == 294967268
    assert candidate([3, 14, 13, 1, 11, 1, 1, 1], 22) == 810815174
    assert candidate([14, 3, 6, 6, 1, 7, 13, 16], 28) == 312142986
    assert candidate([3, 4, 4, 15, 18, 12, 6], 8) == 428674972
    assert candidate([6, 15, 17, 9, 9, 17], 5) == 1419857
    assert candidate([2, 12, 1, 11, 12], 5) == 248832
    assert candidate([1, 15, 15], 4) == 50625
    assert candidate([7, 11, 3, 1, 12, 10], 15) == 784368200
    assert candidate([18, 1, 11, 15, 16, 18, 18, 13, 10, 10], 41) == 911212578
    assert candidate([11, 15, 2, 14, 6, 15], 2) == 225
    assert candidate([11, 2, 15, 1, 1, 11, 7, 1], 16) == 734032462
    assert candidate([1, 6, 12, 4, 10, 13, 7, 6, 17, 1], 50) == 377786273
    assert candidate([1, 5, 4, 18, 12, 1, 1, 1, 7, 12], 3) == 5832
    assert candidate([5, 1, 17, 10, 12], 9) == 467999979
    assert candidate([6, 1, 1, 4, 10, 15, 16, 8], 12) == 999939527
    assert candidate([1, 1], 3) == 1
    assert candidate([8], 1) == 8
    assert candidate([9, 8, 14, 1, 14, 14, 5, 1, 6], 44) == 439903801


def test_check():
    check(maximumScore)


### Metadata below ###
# question_id = 3001
# question_title = Apply Operations to Maximize Score
# question_title_slug = apply-operations-to-maximize-score
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 301
# question_dislikes = 9