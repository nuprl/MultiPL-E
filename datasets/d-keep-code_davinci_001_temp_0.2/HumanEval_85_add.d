import std.typecons;
import std.math;
/*
Given a non-empty list of integers lst. add the even elements that are at odd indices..


    Examples:
        add([4, 2, 6, 7]) ==> 2 
    
*/
long add(long[] lst) 
{
    long sum = 0;
    for (int i = 0; i < lst.length; i++)
    {
        if (i % 2 == 1 && lst[i] % 2 == 0)
        {
            sum += lst[i];
        }
    }
    return sum;
}

unittest
{
    alias candidate = add;

    assert(candidate([4L, 88L]) == 88L);
    assert(candidate([4L, 5L, 6L, 7L, 2L, 122L]) == 122L);
    assert(candidate([4L, 0L, 6L, 7L]) == 0L);
    assert(candidate([4L, 4L, 6L, 8L]) == 12L);
}
void main(){}