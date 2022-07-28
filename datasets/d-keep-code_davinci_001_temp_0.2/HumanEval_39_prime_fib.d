
/*

    prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    >>> prime_fib(1)
    2
    >>> prime_fib(2)
    3
    >>> prime_fib(3)
    5
    >>> prime_fib(4)
    13
    >>> prime_fib(5)
    89
    
*/
int prime_fib(int n) 
{
    int f1 = 1, f2 = 1, f3;
    int i = 3;
    while (i <= n)
    {
        f3 = f1 + f2;
        f1 = f2;
        f2 = f3;
        i++;
    }
    if (is_prime(f3))
        return f3;
    else
        return prime_fib(n);
}

unittest
{
    alias candidate = prime_fib;

    assert(candidate(1) == 2);
    assert(candidate(2) == 3);
    assert(candidate(3) == 5);
    assert(candidate(4) == 13);
    assert(candidate(5) == 89);
    assert(candidate(6) == 233);
    assert(candidate(7) == 1597);
    assert(candidate(8) == 28657);
    assert(candidate(9) == 514229);
    assert(candidate(10) == 433494437);
}
void main(){}