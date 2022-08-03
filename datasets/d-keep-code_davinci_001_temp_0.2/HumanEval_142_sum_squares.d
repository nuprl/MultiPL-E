import std.typecons;
import std.math;
/*
"
    This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
    multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
    change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
    
    Examples:
    For lst = [1,2,3] the output should be 6
    For lst = []  the output should be 0
    For lst = [-1,-5,2,-1,-5]  the output should be -126
    
*/
long sum_squares(long[] lst) 
{
    long sum = 0;
    for (int i = 0; i < lst.length; i++)
    {
        if (i % 4 == 0 && i % 3 != 0)
        {
            sum += std.math.pow(lst[i], 3);
        }
        else if (i % 3 == 0)
        {
            sum += std.math.pow(lst[i], 2);
        }
    }
    return sum;
}

unittest
{
    alias candidate = sum_squares;

    assert(candidate([1L, 2L, 3L]) == 6L);
    assert(candidate([1L, 4L, 9L]) == 14L);
    assert(candidate([]) == 0L);
    assert(candidate([1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L]) == 9L);
    assert(candidate([-1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L]) == -3L);
    assert(candidate([0L]) == 0L);
    assert(candidate([-1L, -5L, 2L, -1L, -5L]) == -126L);
    assert(candidate([-56L, -99L, 1L, 0L, -2L]) == 3030L);
    assert(candidate([-1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -1L]) == 0L);
    assert(candidate([-16L, -9L, -2L, 36L, 36L, 26L, -20L, 25L, -40L, 20L, -4L, 12L, -26L, 35L, 37L]) == -14196L);
    assert(candidate([-1L, -3L, 17L, -1L, -15L, 13L, -1L, 14L, -14L, -12L, -5L, 14L, -14L, 6L, 13L, 11L, 16L, 16L, 4L, 10L]) == -1448L);
}
void main(){}