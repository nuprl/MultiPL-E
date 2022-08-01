import std.typecons;
import std.math;
/*

    You are given a positive integer n. You have to create an integer array a of length n.
        For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
        Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
    and a[i] + a[j] + a[k] is a multiple of 3.

    Example :
        Input: n = 5
        Output: 1
        Explanation: 
        a = [1, 3, 7, 13, 21]
        The only valid triple is (1, 7, 13).
    
*/
long get_max_triples(long n) 
{
    long max_triples = 0;
    for (long i = 1; i < n; i++) 
    {
        for (long j = i + 1; j < n; j++) 
        {
            for (long k = j + 1; k < n; k++) 
            {
                if ((i * i + j * j + k * k) % 3 == 0) 
                {
                    max_triples++;
                }
            }
        }
    }
    return max_triples;
}

unittest
{
    alias candidate = get_max_triples;

    assert(candidate(5) == 1);
    assert(candidate(6) == 4);
    assert(candidate(10) == 36);
    assert(candidate(100) == 53361);
}
void main(){}