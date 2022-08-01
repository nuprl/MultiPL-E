import std.typecons;
import std.math;
/*

    Given a list of numbers, return the sum of squares of the numbers
    in the list that are odd. Ignore numbers that are negative or not integers.
    
    double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
    double_the_difference([-1, -2, 0]) == 0
    double_the_difference([9, -2]) == 81
    double_the_difference([0]) == 0  
   
    If the input list is empty, return 0.
    
*/
long double_the_difference(float[] lst) 
{
    long sum = 0;
    for (int i = 0; i < lst.length; i++)
    {
        if (lst[i] > 0 && lst[i] % 2 != 0)
        {
            sum += lst[i] * lst[i];
        }
    }
    return sum;
}

unittest
{
    alias candidate = double_the_difference;

    assert(candidate([]) == 0L);
    assert(candidate([5.0, 4.0]) == 25L);
    assert(candidate([0.1, 0.2, 0.3]) == 0L);
    assert(candidate([-10.0, -20.0, -30.0]) == 0L);
    assert(candidate([-1.0, -2.0, 8.0]) == 0L);
    assert(candidate([0.2, 3.0, 5.0]) == 34L);
    assert(candidate([-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165L);
}
void main(){}