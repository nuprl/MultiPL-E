
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
bool move_one_ball(int[] arr) 
{ 
    int n = arr.length; 
    int i = 0; 
    int j = 0; 
    while (j < n) 
    { 
        if (arr[j] > arr[j + 1]) 
        { 
            i = j; 
            while (i >= 0 && arr[i] > arr[i + 1]) 
            { 
                swap(arr, i, i + 1); 
                i--; 
            } 
        } 
        j++; 
    } 
    for (int k = 0; k < n - 1; k++) 
    { 
        if (arr[k] > arr[k + 1]) 
            return false; 
    } 
    return true; 
} 
// Driver program to test above function 
public static void main(String[] args) 
{ 
    int[] arr = {3, 4, 5, 1, 2}; 
    if (move_one_ball(arr)) 
        System.out.println("Yes"); 
    else
        System.out.println("No"); 
} 
main(args);
/*
The above solution is not the most optimal one.
We can use sorting to solve this problem in O(nLogn) time.
*/

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