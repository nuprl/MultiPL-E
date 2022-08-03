import std.math;
import std.typecons;
/*
You are given a list of numbers.
    You need to return the sum of squared numbers in the given list,
    round each element in the list to the upper int(Ceiling) first.
    Examples:
    For lst = [1,2,3] the output should be 14
    For lst = [1,4,9] the output should be 98
    For lst = [1,3,5,7] the output should be 84
    For lst = [1.4,4.2,0] the output should be 29
    For lst = [-2.4,1,1] the output should be 6
    

    
*/
long sum_squares(float[] lst) 
{
    long sum = 0;
    for (int i = 0; i < lst.length; i++)
    {
        sum += Math.ceil(lst[i]);
    }
    return sum;
}

unittest
{
    alias candidate = sum_squares;

    assert(candidate([1.0, 2.0, 3.0]) == 14L);
    assert(candidate([1.0, 2.0, 3.0]) == 14L);
    assert(candidate([1.0, 3.0, 5.0, 7.0]) == 84L);
    assert(candidate([1.4, 4.2, 0.0]) == 29L);
    assert(candidate([-2.4, 1.0, 1.0]) == 6L);
    assert(candidate([100.0, 1.0, 15.0, 2.0]) == 10230L);
    assert(candidate([10000.0, 10000.0]) == 200000000L);
    assert(candidate([-1.4, 4.6, 6.3]) == 75L);
    assert(candidate([-1.4, 17.9, 18.9, 19.9]) == 1086L);
    assert(candidate([0.0]) == 0L);
    assert(candidate([-1.0]) == 1L);
    assert(candidate([-1.0, 1.0, 0.0]) == 2L);
}
void main(){}