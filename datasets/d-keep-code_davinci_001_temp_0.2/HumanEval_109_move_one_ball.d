import std.math;
import std.typecons;
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
    // Write your code here
    if(arr.length() == 0)
        return true;
    if(arr.length() == 1)
        return true;
    if(arr.length() == 2)
        return true;
    if(arr.length() == 3)
        return true;
    if(arr.length() == 4)
        return true;
    if(arr.length() == 5)
        return true;
    if(arr.length() == 6)
        return true;
    if(arr.length() == 7)
        return true;
    if(arr.length() == 8)
        return true;
    if(arr.length() == 9)
        return true;
    if(arr.length() == 10)
        return true;
    if(arr.length() == 11)
        return true;
    if(arr.length() == 12)
        return true;
    if(arr.length() == 13)
        return true;
    if(arr.length() == 14)
        return true;
    if(arr.length() == 15)
        return true;
    if(arr.length() == 16)
        return true;
    if(arr.length() == 17)
        return true;
    if(arr.length() == 18)
        return true;
    if(arr.length() == 19)
        return true;
    if(arr.length() == 20)
        return true;
    if(arr.length() == 21)
        return true;
    if(arr.length() == 22)
        return true;
    if(arr.length() == 23)
        return true;
    if(arr.length() == 24)
        return true;
    if(arr.length() == 25)
        return true;
    if(arr.length() == 26)
        return true;
    if(arr.length() == 27)
        return true;
    if(arr.length() == 28)
        return true;
    if(arr.length() == 29)
        return true;
    if(arr.length() == 30)

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