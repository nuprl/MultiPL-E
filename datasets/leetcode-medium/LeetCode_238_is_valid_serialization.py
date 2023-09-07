def is_valid_serialization(preorder: str) -> bool:
    """
    One way to serialize a binary tree is to use preorder traversal. When we encounter a non-null node, we record the node's value. If it is a null node, we record using a sentinel value such as '#'.

    For example, the above binary tree can be serialized to the string "9,3,4,#,#,1,#,#,2,#,6,#,#", where '#' represents a null node.
    Given a string of comma-separated values preorder, return true if it is a correct preorder traversal serialization of a binary tree.
    It is guaranteed that each comma-separated value in the string must be either an integer or a character '#' representing null pointer.
    You may assume that the input format is always valid.

    For example, it could never contain two consecutive commas, such as "1,,3".

    Note: You are not allowed to reconstruct the tree.
 
    Example 1:
    Input: preorder = "9,3,4,#,#,1,#,#,2,#,6,#,#"
    Output: true
    Example 2:
    Input: preorder = "1,#"
    Output: false
    Example 3:
    Input: preorder = "9,#,#,1"
    Output: false

 
    Constraints:

    1 <= preorder.length <= 104
    preorder consist of integers in the range [0, 100] and '#' separated by commas ','.

    """
    ### Canonical solution below ###
    nodes = preorder.split(',')
    node_count = 1

    for node in nodes:
        node_count -= 1
        if node_count < 0:
            return False
        if node != '#':
            node_count += 2

    return node_count == 0




### Unit tests below ###
def check(candidate):
	assert candidate("9,3,4,5,#,#,#,1,#,#,2,#,6,10,11,#,#,12,13,#,#,#") == False
	assert candidate("9,3,4,#,#,1,#,#,#,#") == False
	assert candidate("9,9,9,9,#,#,#,9,9,#,#,9,#,#,#") == True
	assert candidate(
    "9,3,4,#,1,#,#,2,#,6,10,#,11,12,#,13,#,#,#") == False
	assert candidate("9,3,4,#,#,1,#,#,2,#,6,10,#,11,#,#,#") == True
	assert candidate(
    "1,#,2,3,4,5,6,#,#,#,7,8,9,10,11,#,#,#,12,#,13,14,#,15,16,17,#,18,#,19,#,#,20,21,22,#,#,#") == False
	assert candidate("9,3,4,5,#,#,1,#,#,2,#,6,10,11,#,#,#,#") == False
	assert candidate("9,3,4,5,#,#,#,1,#,#,2,#,6,10,#,#,11,#,#,12,13,#,#,#") == False
	assert candidate(
    "9,9,9,9,9,#,#,9,9,9,#,#,9,9,#,#,#,#") == False
	assert candidate("9,3,4,#,#,1,#,#,2,#,6,#,#") == True
	assert candidate("9,3,4,5,#,#,1,#,#,#,2,6,#,#,#,#,7,#,8,#,9,10,#,#,11,12,#,13,14,#,#,#") == False
	assert candidate("9,3,4,#,#,1,#,#,2,#,6,#,7,#,#") == True
	assert candidate("9,3,4,#,#,1,#,#,2,#,#,#,6,#,#") == False
	assert candidate("9,3,4,#,#,1,#,#,2,#,6,#,#,7,#,#") == False
	assert candidate("9,9,9,#,#,9,#,#,#,9,#,1,#,#,1,1,#,1,#,9,#,#") == False
	assert candidate("9,#,#,1") == False
	assert candidate("9,9,9,9,#,#,#,9,9,#,#,9,9,9,#,#,#") == False
	assert candidate(
    "9,9,9,9,#,#,#,9,9,#,#,9,9,9,#,#,9,#,#,#") == False
	assert candidate("9,3,4,#,1,#,#,2,#,6,#,#") == False
	assert candidate("9,#,#") == True
	assert candidate(
    "1,#,2,#,3,4,#,#,#,5,#,6,7,8,9,10,#,#,11,12,#,13,#,#,14,#,15,16,#,17,18,#,19,#,20,21,22,23,#,24,25,26,27,#,28,#,29,#,30,31,32,33,34,35,36,#,#,#") == False
	assert candidate("9,9,#,#,9,#,#") == True
	assert candidate("#") == True
	assert candidate("1,#,2,3,#,#,4,5,6,#,7,8,#,9,10,#,#,11,12,13,#,14,#,15,16,17,#,18,19,#,#,20,#,#,#") == False
	assert candidate("9,3,4,#,#,1,#,#,2,3,#,#,6,#,1,#,#,7,#,#,#") == False
	assert candidate("9,3,4,5,#,#,#,1,#,#,2,#,6,10,11,#,12,#,13,#,#,#") == False
	assert candidate("1,#") == False
	assert candidate("9,3,#,#,2,#,#") == True
def test_check():
	check(is_valid_serialization)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack,tree,binary-tree
# Metadata Coverage: 100
