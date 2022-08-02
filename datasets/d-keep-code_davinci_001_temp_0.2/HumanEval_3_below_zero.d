import std.math;
/*
 You're given a list of deposit and withdrawal operations on a bank account that starts with
    zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
    at that point function should return True. Otherwise it should return False.
    >>> below_zero([1, 2, 3])
    False
    >>> below_zero([1, 2, -4, 5])
    True
    
*/
bool below_zero(long[] operations) 
{
    bool is_below_zero = false;
    long balance = 0;
    for (int i = 0; i < operations.Length; i++)
    {
        balance += operations[i];
        if (balance < 0)
        {
            is_below_zero = true;
            break;
        }
    }
    return is_below_zero;
}

unittest
{
    alias candidate = below_zero;

    assert(candidate([]) == false);
    assert(candidate([1L, 2L, -3L, 1L, 2L, -3L]) == false);
    assert(candidate([1L, 2L, -4L, 5L, 6L]) == true);
    assert(candidate([1L, -1L, 2L, -2L, 5L, -5L, 4L, -4L]) == false);
    assert(candidate([1L, -1L, 2L, -2L, 5L, -5L, 4L, -5L]) == true);
    assert(candidate([1L, -2L, 2L, -2L, 5L, -5L, 4L, -4L]) == true);
}
void main(){}