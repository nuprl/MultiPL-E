
/*
Change numerical base of input number x to base.
    return string representation after the conversion.
    base numbers are less than 10.
    >>> change_base(8, 3)
    '22'
    >>> change_base(8, 2)
    '1000'
    >>> change_base(7, 2)
    '111'
    
*/
const(char)[] change_base(int x, int base) 
{
    const char[] digits = "0123456789abcdefghijklmnopqrstuvwxyz";
    const int max_base = 36;
    const int max_x = max_base - 1;
    const int max_y = max_x / base;
    const int max_len = max_y + 2;
    char[] result = new char[max_len];
    int result_index = max_len - 1;
    while (x > 0) {
        int remainder = x % base;
        result[result_index] = digits[remainder];
        result_index--;
        x /= base;
    }
    return result;
}

unittest
{
    alias candidate = change_base;

    assert(candidate(8, 3) == "22");
    assert(candidate(9, 3) == "100");
    assert(candidate(234, 2) == "11101010");
    assert(candidate(16, 2) == "10000");
    assert(candidate(8, 2) == "1000");
    assert(candidate(7, 2) == "111");
    assert(candidate(2, 3) == "2");
    assert(candidate(3, 4) == "3");
    assert(candidate(4, 5) == "4");
    assert(candidate(5, 6) == "5");
    assert(candidate(6, 7) == "6");
    assert(candidate(7, 8) == "7");
}
void main(){}