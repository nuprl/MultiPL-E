import std.typecons;
import std.math;
/*

    Given two positive integers a and b, return the even digits between a
    and b, in ascending order.

    For example:
    generate_integers(2, 8) => [2, 4, 6, 8]
    generate_integers(8, 2) => [2, 4, 6, 8]
    generate_integers(10, 14) => []
    
*/
int[] generate_integers(int a, int b) 
{
    int[] result = new int[0];
    if(a > b)
    {
        int tmp = a;
        a = b;
        b = tmp;
    }
    for(int i = a; i <= b; i++)
    {
        if(i % 2 == 0)
        {
            result = append(result, i);
        }
    }
    return result;
}

unittest
{
    alias candidate = generate_integers;

    assert(candidate(2, 10) == [2, 4, 6, 8]);
    assert(candidate(10, 2) == [2, 4, 6, 8]);
    assert(candidate(132, 2) == [2, 4, 6, 8]);
    assert(candidate(17, 89) == []);
}
void main(){}