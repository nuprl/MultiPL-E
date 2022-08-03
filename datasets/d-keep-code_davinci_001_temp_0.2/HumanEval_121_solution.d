import std.math;
import std.typecons;
/*
Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
    

    Examples
    solution([5, 8, 7, 1]) ==> 12
    solution([3, 3, 3, 3, 3]) ==> 9
    solution([30, 13, 24, 321]) ==>0
    
*/
long solution(long[] lst) 
{
    long sum = 0;
    for (int i = 0; i < lst.Length; i++)
    {
        if (i % 2 == 0 && lst[i] % 2 != 0)
        {
            sum += lst[i];
        }
    }
    return sum;
}


unittest
{
    alias candidate = solution;

    assert(candidate([5L, 8L, 7L, 1L]) == 12L);
    assert(candidate([3L, 3L, 3L, 3L, 3L]) == 9L);
    assert(candidate([30L, 13L, 24L, 321L]) == 0L);
    assert(candidate([5L, 9L]) == 5L);
    assert(candidate([2L, 4L, 8L]) == 0L);
    assert(candidate([30L, 13L, 23L, 32L]) == 23L);
    assert(candidate([3L, 13L, 2L, 9L]) == 3L);
}
void main(){}