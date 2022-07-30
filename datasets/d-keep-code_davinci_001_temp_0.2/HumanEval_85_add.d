import std.math;
import std.typecons;
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
        if (i % 2 != 0 && lst[i] % 2 == 0)
        {
            sum += lst[i];
        }
    }
    return sum;
}

unittest
{
    alias candidate = add;

    assert(candidate([4, 88]) == 88);
    assert(candidate([4, 5, 6, 7, 2, 122]) == 122);
    assert(candidate([4, 0, 6, 7]) == 0);
    assert(candidate([4, 4, 6, 8]) == 12);
}
void main(){}