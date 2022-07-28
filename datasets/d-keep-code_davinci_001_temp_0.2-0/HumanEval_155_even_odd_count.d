import std.typecons;
import std.math;
/*
Given an integer. return a tuple that has the number of even and odd digits respectively.

     Example:
        even_odd_count(-12) ==> (1, 1)
        even_odd_count(123) ==> (1, 2)
    
*/
Tuple!(int, int) even_odd_count(int num) 
{
    int even = 0;
    int odd = 0;
    for (int i = 0; i < std.math.to_string(num).length(); i++)
    {
        if (std.math.to_string(num)[i] % 2 == 0)
        {
            even++;
        }
        else
        {
            odd++;
        }
    }
    return Tuple!(int, int)(even, odd);
}

unittest
{
    alias candidate = even_odd_count;

    assert(candidate(7) == tuple(0, 1));
    assert(candidate(-78) == tuple(1, 1));
    assert(candidate(3452) == tuple(2, 2));
    assert(candidate(346211) == tuple(3, 3));
    assert(candidate(-345821) == tuple(3, 3));
    assert(candidate(-2) == tuple(1, 0));
    assert(candidate(-45347) == tuple(2, 3));
    assert(candidate(0) == tuple(1, 0));
}
void main(){}