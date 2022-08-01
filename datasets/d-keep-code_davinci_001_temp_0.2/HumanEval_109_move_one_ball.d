import std.typecons;
import std.math;
/*
We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
    numbers in the array will be randomly ordered. Your task is to determine if
    it is possible to get an array sorted in non-decreasing order by performing 
    the following operation on the given array:
        You are allowed to perform right shift operation any number of times.
    
    One right shift operation means shifting all elements of the array by one
    position in the right direction. The last element of the array will be moved to
    the starting position in the array i.e. 0th index. 

    If it is possible to obtain the sorted array by performing the above operation
    then return True else return False.
    If the given array is empty then return True.

    Note: The given list is guaranteed to have unique elements.

    For Example:
    
    move_one_ball([3, 4, 5, 1, 2])==>True
    Explanation: By performin 2 right shift operations, non-decreasing order can
                 be achieved for the given array.
    move_one_ball([3, 5, 4, 1, 2])==>False
    Explanation:It is not possible to get non-decreasing order for the given
                array by performing any number of right shift operations.
                
    
*/
bool move_one_ball(long[] arr) 
{
    if (arr.length() == 0)
        return true;
    int i = 0;
    while (i < arr.length() - 1) {
        if (arr[i] > arr[i + 1]) {
            int j = i;
            while (j > 0 && arr[j] > arr[j - 1]) {
                swap(arr[j], arr[j - 1]);
                j--;
            }
            i = 0;
        }
        else
            i++;
    }
    return true;
}

unittest
{
    alias candidate = move_one_ball;

    assert(candidate([3, 4, 5, 1, 2]) == true);
    assert(candidate([3, 5, 10, 1, 2]) == true);
    assert(candidate([4, 3, 1, 2]) == false);
    assert(candidate([3, 5, 4, 1, 2]) == false);
    assert(candidate([]) == true);
}
void main(){}