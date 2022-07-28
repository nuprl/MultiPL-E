
/*
 Implement the function f that takes n as a parameter,
    and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
    or the sum of numbers from 1 to i otherwise.
    i starts from 1.
    the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
    Example:
    f(5) == [1, 2, 6, 24, 15]
    
*/
int[] f(int n) 
{
    int[] result = new int[n];
    for (int i = 1; i <= n; i++)
    {
        if (i % 2 == 0)
        {
            result[i - 1] = factorial(i);
        }
        else
        {
            result[i - 1] = sum(i);
        }
    }
    return result;
}

unittest
{
    alias candidate = f;

    assert(candidate(5) == [1, 2, 6, 24, 15]);
    assert(candidate(7) == [1, 2, 6, 24, 15, 720, 28]);
    assert(candidate(1) == [1]);
    assert(candidate(3) == [1, 2, 6]);
}
void main(){}