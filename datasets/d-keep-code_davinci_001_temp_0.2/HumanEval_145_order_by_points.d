
/*

    Write a function which sorts the given list of integers
    in ascending order according to the sum of their digits.
    Note: if there are several items with similar sum of their digits,
    order them based on their index in original list.

    For example:
    >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
    >>> order_by_points([]) == []
    
*/
int[] order_by_points(int[] nums) 
{
    int[] result = new int[nums.Length];
    int[] temp = new int[nums.Length];
    int[] temp2 = new int[nums.Length];
    int[] temp3 = new int[nums.Length];
    int[] temp4 = new int[nums.Length];
    int[] temp5 = new int[nums.Length];
    int[] temp6 = new int[nums.Length];
    int[] temp7 = new int[nums.Length];
    int[] temp8 = new int[nums.Length];
    int[] temp9 = new int[nums.Length];
    int[] temp10 = new int[nums.Length];
    int[] temp11 = new int[nums.Length];
    int[] temp12 = new int[nums.Length];
    int[] temp13 = new int[nums.Length];
    int[] temp14 = new int[nums.Length];
    int[] temp15 = new int[nums.Length];
    int[] temp16 = new int[nums.Length];
    int[] temp17 = new int[nums.Length];
    int[] temp18 = new int[nums.Length];
    int[] temp19 = new int[nums.Length];
    int[] temp20 = new int[nums.Length];
    int[] temp21 = new int[nums.Length];
    int[] temp22 = new int[nums.Length];
    int[] temp23 = new int[nums.Length];
    int[] temp24 = new int[nums.Length];
    int[] temp25 = new int[nums.Length];
    int[] temp26 = new int[nums.Length];
    int[] temp27 = new int[nums.Length];
    int[] temp28 = new int[nums.Length];
    int[] temp29 = new int[nums.Length];
    int[] temp30 = new int[nums.Length];
    int[] temp31 = new int[nums.Length];
    int[] temp32 = new int[nums.Length];
    int[] temp

unittest
{
    alias candidate = order_by_points;

    assert(candidate([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]);
    assert(candidate([1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457]);
    assert(candidate([]) == []);
    assert(candidate([1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54]);
    assert(candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9]);
    assert(candidate([0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6]);
}
void main(){}