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
bool below_zero(int[] operations) 
{
    int balance = 0;
    for (int i = 0; i < operations.Length; i++)
    {
        balance += operations[i];
        if (balance < 0)
        {
            return true;
        }
    }
    return false;
}

unittest
{
    alias candidate = below_zero;

    assert(candidate([]) == false);
    assert(candidate([1, 2, -3, 1, 2, -3]) == false);
    assert(candidate([1, 2, -4, 5, 6]) == true);
    assert(candidate([1, -1, 2, -2, 5, -5, 4, -4]) == false);
    assert(candidate([1, -1, 2, -2, 5, -5, 4, -5]) == true);
    assert(candidate([1, -2, 2, -2, 5, -5, 4, -4]) == true);
}
void main(){}