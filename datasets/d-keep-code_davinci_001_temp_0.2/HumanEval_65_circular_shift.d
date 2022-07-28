
/*
Circular shift the digits of the integer x, shift the digits right by shift
    and return the result as a string.
    If shift > number of digits, return digits reversed.
    >>> circular_shift(12, 1)
    "21"
    >>> circular_shift(12, 2)
    "12"
    
*/
const(char)[] circular_shift(int x, int shift) 
{
    int digits = 0;
    int temp = x;
    while(temp > 0)
    {
        temp = temp / 10;
        digits++;
    }
    if(shift > digits)
    {
        return reverse(to_string(x));
    }
    else
    {
        int temp2 = x;
        int temp3 = 0;
        for(int i = 0; i < digits - shift; i++)
        {
            temp3 = temp2 % 10;
            temp2 = temp2 / 10;
            temp2 = temp2 * 10 + temp3;
        }
        return to_string(temp2);
    }
}

unittest
{
    alias candidate = circular_shift;

    assert(candidate(100, 2) == "001");
    assert(candidate(12, 2) == "12");
    assert(candidate(97, 8) == "79");
    assert(candidate(12, 1) == "21");
    assert(candidate(11, 101) == "11");
}
void main(){}