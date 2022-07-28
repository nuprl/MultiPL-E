
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
    if (a > b)
    {
        int temp = a;
        a = b;
        b = temp;
    }
    int[] result = new int[b - a + 1];
    int i = 0;
    for (int j = a; j <= b; j++)
    {
        if (j % 2 == 0)
        {
            result[i] = j;
            i++;
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