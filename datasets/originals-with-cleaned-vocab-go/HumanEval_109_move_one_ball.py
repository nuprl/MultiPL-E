from typing import List

def move_one_ball(arr: List[int]) -> bool:
    """We have a list 'arr' of N integers arr[1], arr[2], ..., arr[N].The
    numbers in the list will be randomly ordered. Your task is to determine if
    it is possible to get a list sorted in non-decreasing order by performing 
    the following operation on the given list:
        You are allowed to perform right shift operation any number of times.
    
    One right shift operation means shifting all elements of the list by one
    position in the right direction. The last element of the list will be moved to
    the starting position in the list i.e. 0th index. 

    If it is possible to obtain the sorted list by performing the above operation
    then return true else return false.
    If the given list is empty then return true.

    Note: The given list is guaranteed to have unique elements.

    For Example:
    
    >>> move_one_ball([3, 4, 5, 1, 2])
    True
    Explanation: By performin 2 right shift operations, non-decreasing order can
                 be achieved for the given list.
    >>> move_one_ball([3, 5, 4, 1, 2])
    False
    Explanation:It is not possible to get non-decreasing order for the given
                list by performing any number of right shift operations.
                
    """
    ### Canonical solution below ###
    if len(arr)==0:
      return True
    sorted_array=sorted(arr)
    my_arr=[]
    
    min_value=min(arr)
    min_index=arr.index(min_value)
    my_arr=arr[min_index:]+arr[0:min_index]
    for i in range(len(arr)):
      if my_arr[i]!=sorted_array[i]:
        return False
    return True

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    assert candidate([3, 4, 5, 1, 2])==True, "This prints if this assert fails 1 (good for debugging!)"
    assert candidate([3, 5, 10, 1, 2])==True
    assert candidate([4, 3, 1, 2])==False
    # Check some edge cases that are easy to work out by hand.
    assert candidate([3, 5, 4, 1, 2])==False, "This prints if this assert fails 2 (also good for debugging!)"
    assert candidate([])==True
def test_check():
    check(move_one_ball)
