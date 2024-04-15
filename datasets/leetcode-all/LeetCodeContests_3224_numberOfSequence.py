from typing import List

def numberOfSequence(n: int, sick: List[int]) -> int:
    """
    You are given an integer n and a 0-indexed integer array sick which is sorted in increasing order.
    There are n children standing in a queue with positions 0 to n - 1 assigned to them. The array sick contains the positions of the children who are infected with an infectious disease. An infected child at position i can spread the disease to either of its immediate neighboring children at positions i - 1 and i + 1 if they exist and are currently not infected. At most one child who was previously not infected can get infected with the disease in one second.
    It can be shown that after a finite number of seconds, all the children in the queue will get infected with the disease. An infection sequence is the sequential order of positions in which all of the non-infected children get infected with the disease. Return the total number of possible infection sequences.
    Since the answer may be large, return it modulo 109 + 7.
    Note that an infection sequence does not contain positions of children who were already infected with the disease in the beginning.
    
    Example 1:
    
    Input: n = 5, sick = [0,4]
    Output: 4
    Explanation: Children at positions 1, 2, and 3 are not infected in the beginning. There are 4 possible infection sequences:
    - The children at positions 1 and 3 can get infected since their positions are adjacent to the infected children 0 and 4. The child at position 1 gets infected first.
    Now, the child at position 2 is adjacent to the child at position 1 who is infected and the child at position 3 is adjacent to the child at position 4 who is infected, hence either of them can get infected. The child at position 2 gets infected.
    Finally, the child at position 3 gets infected because it is adjacent to children at positions 2 and 4 who are infected. The infection sequence is [1,2,3].
    - The children at positions 1 and 3 can get infected because their positions are adjacent to the infected children 0 and 4. The child at position 1 gets infected first.
    Now, the child at position 2 is adjacent to the child at position 1 who is infected and the child at position 3 is adjacent to the child at position 4 who is infected, hence either of them can get infected. The child at position 3 gets infected.
    Finally, the child at position 2 gets infected because it is adjacent to children at positions 1 and 3 who are infected. The infection sequence is [1,3,2].
    - The infection sequence is [3,1,2]. The order of infection of disease in the children can be seen as: [0,1,2,3,4] => [0,1,2,3,4] => [0,1,2,3,4] => [0,1,2,3,4].
    - The infection sequence is [3,2,1]. The order of infection of disease in the children can be seen as: [0,1,2,3,4] => [0,1,2,3,4] => [0,1,2,3,4] => [0,1,2,3,4].
    
    Example 2:
    
    Input: n = 4, sick = [1]
    Output: 3
    Explanation: Children at positions 0, 2, and 3 are not infected in the beginning. There are 3 possible infection sequences:
    - The infection sequence is [0,2,3]. The order of infection of disease in the children can be seen as: [0,1,2,3] => [0,1,2,3] => [0,1,2,3] => [0,1,2,3].
    - The infection sequence is [2,0,3]. The order of infection of disease in the children can be seen as: [0,1,2,3] => [0,1,2,3] => [0,1,2,3] => [0,1,2,3].
    - The infection sequence is [2,3,0]. The order of infection of disease in the children can be seen as: [0,1,2,3] => [0,1,2,3] => [0,1,2,3] => [0,1,2,3].
    
    
    Constraints:
    
    2 <= n <= 105
    1 <= sick.length <= n - 1
    0 <= sick[i] <= n - 1
    sick is sorted in increasing order.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5, [0, 4]) == 4
    assert candidate(4, [1]) == 3
    assert candidate(2, [0]) == 1
    assert candidate(5, [0]) == 1
    assert candidate(100, [0]) == 1
    assert candidate(2, [1]) == 1
    assert candidate(5, [1]) == 4
    assert candidate(5, [2]) == 6
    assert candidate(5, [3]) == 4
    assert candidate(5, [4]) == 1
    assert candidate(5, [0, 1]) == 1
    assert candidate(3, [0, 2]) == 1
    assert candidate(5, [0, 2]) == 3
    assert candidate(5, [0, 3]) == 6
    assert candidate(5, [1, 2]) == 3
    assert candidate(5, [1, 3]) == 6
    assert candidate(5, [1, 4]) == 6
    assert candidate(5, [2, 3]) == 3
    assert candidate(5, [2, 4]) == 3
    assert candidate(5, [3, 4]) == 1
    assert candidate(5, [0, 1, 2]) == 1
    assert candidate(5, [0, 1, 3]) == 2
    assert candidate(5, [0, 1, 4]) == 2
    assert candidate(5, [0, 2, 3]) == 2
    assert candidate(5, [0, 2, 4]) == 2
    assert candidate(5, [0, 3, 4]) == 2
    assert candidate(5, [1, 2, 3]) == 2
    assert candidate(5, [1, 2, 4]) == 2
    assert candidate(5, [1, 3, 4]) == 2
    assert candidate(5, [2, 3, 4]) == 1
    assert candidate(5, [0, 1, 2, 3]) == 1
    assert candidate(10, [0, 1, 2, 3]) == 1
    assert candidate(5, [0, 1, 2, 4]) == 1
    assert candidate(10, [0, 1, 2, 4]) == 6
    assert candidate(10, [0, 1, 2, 5]) == 30
    assert candidate(10, [0, 1, 2, 8]) == 96
    assert candidate(10, [0, 1, 2, 9]) == 32
    assert candidate(5, [0, 1, 3, 4]) == 1
    assert candidate(10, [0, 1, 3, 5]) == 30
    assert candidate(10, [0, 1, 3, 6]) == 120
    assert candidate(10, [0, 1, 3, 7]) == 240
    assert candidate(10, [0, 1, 3, 8]) == 240
    assert candidate(10, [0, 1, 4, 5]) == 30
    assert candidate(10, [0, 1, 4, 6]) == 120
    assert candidate(10, [0, 1, 4, 7]) == 360
    assert candidate(10, [0, 1, 4, 8]) == 480
    assert candidate(10, [0, 1, 4, 9]) == 240
    assert candidate(10, [0, 1, 5, 6]) == 80
    assert candidate(10, [0, 1, 5, 7]) == 240
    assert candidate(10, [0, 1, 5, 8]) == 480
    assert candidate(10, [0, 1, 5, 9]) == 320
    assert candidate(10, [0, 1, 6, 7]) == 120
    assert candidate(10, [0, 1, 6, 8]) == 240
    assert candidate(10, [0, 1, 6, 9]) == 240
    assert candidate(10, [0, 1, 7, 8]) == 96
    assert candidate(10, [0, 1, 7, 9]) == 96
    assert candidate(10, [0, 1, 8, 9]) == 32
    assert candidate(5, [0, 2, 3, 4]) == 1
    assert candidate(10, [0, 2, 3, 4]) == 6
    assert candidate(10, [0, 2, 3, 5]) == 30
    assert candidate(10, [0, 2, 3, 6]) == 120
    assert candidate(10, [0, 2, 3, 7]) == 240
    assert candidate(10, [0, 2, 3, 8]) == 240
    assert candidate(10, [0, 2, 3, 9]) == 96
    assert candidate(10, [0, 2, 4, 5]) == 30
    assert candidate(10, [0, 2, 4, 6]) == 120
    assert candidate(10, [0, 2, 4, 7]) == 360
    assert candidate(10, [0, 2, 4, 8]) == 480
    assert candidate(10, [0, 2, 4, 9]) == 240
    assert candidate(10, [0, 2, 5, 6]) == 120
    assert candidate(10, [0, 2, 5, 7]) == 360
    assert candidate(10, [0, 2, 5, 8]) == 720
    assert candidate(10, [0, 2, 5, 9]) == 480
    assert candidate(10, [0, 2, 6, 7]) == 240
    assert candidate(10, [0, 2, 6, 8]) == 480
    assert candidate(10, [0, 2, 7, 8]) == 240
    assert candidate(10, [0, 2, 7, 9]) == 240
    assert candidate(10, [0, 2, 8, 9]) == 96
    assert candidate(10, [0, 3, 4, 5]) == 30
    assert candidate(10, [0, 3, 4, 7]) == 360
    assert candidate(10, [0, 3, 4, 8]) == 480
    assert candidate(10, [0, 3, 4, 9]) == 240
    assert candidate(10, [0, 3, 5, 6]) == 120
    assert candidate(10, [0, 3, 5, 7]) == 360
    assert candidate(10, [0, 3, 6, 7]) == 360
    assert candidate(10, [0, 3, 6, 8]) == 720
    assert candidate(10, [0, 3, 6, 9]) == 720
    assert candidate(10, [0, 3, 7, 8]) == 480
    assert candidate(10, [0, 3, 7, 9]) == 480
    assert candidate(10, [0, 3, 8, 9]) == 240
    assert candidate(10, [0, 4, 5, 6]) == 80
    assert candidate(10, [0, 4, 5, 7]) == 240
    assert candidate(10, [0, 4, 5, 9]) == 320
    assert candidate(10, [0, 4, 6, 7]) == 240
    assert candidate(10, [0, 4, 6, 8]) == 480
    assert candidate(10, [0, 4, 8, 9]) == 320
    assert candidate(10, [0, 5, 6, 7]) == 120
    assert candidate(10, [0, 5, 6, 9]) == 240
    assert candidate(10, [0, 5, 7, 8]) == 240
    assert candidate(10, [0, 5, 7, 9]) == 240


def test_check():
    check(numberOfSequence)


### Metadata below ###
# question_id = 3224
# question_title = Count the Number of Infection Sequences
# question_title_slug = count-the-number-of-infection-sequences
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 50
# question_dislikes = 12