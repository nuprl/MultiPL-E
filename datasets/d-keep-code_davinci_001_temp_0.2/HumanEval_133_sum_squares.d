import std.typecons;
import std.math;
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
int sum_squares(float[] lst) 
{
    int sum = 0;
    for (int i = 0; i < lst.length; i++)
    {
        sum += (int)Math.ceil(lst[i]);
    }
    return sum;
}

unittest
{
    alias candidate = sum_squares;

    assert(candidate([1.0, 2.0, 3.0]) == 14);
    assert(candidate([1.0, 2.0, 3.0]) == 14);
    assert(candidate([1.0, 3.0, 5.0, 7.0]) == 84);
    assert(candidate([1.4, 4.2, 0.0]) == 29);
    assert(candidate([-2.4, 1.0, 1.0]) == 6);
    assert(candidate([100.0, 1.0, 15.0, 2.0]) == 10230);
    assert(candidate([10000.0, 10000.0]) == 200000000);
    assert(candidate([-1.4, 4.6, 6.3]) == 75);
    assert(candidate([-1.4, 17.9, 18.9, 19.9]) == 1086);
    assert(candidate([0.0]) == 0);
    assert(candidate([-1.0]) == 1);
    assert(candidate([-1.0, 1.0, 0.0]) == 2);
}
void main(){}