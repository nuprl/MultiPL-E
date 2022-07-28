
/*

    Given a positive integer n, return the count of the numbers of n-digit
    positive integers that start or end with 1.
    
*/
int starts_one_ends(int n) 
{
    int count = 0;
    for (int i = 1; i <= n; i++) {
        if (i == 1 || i == n) {
            count += (n - 1) * 9;
        } else {
            count += (n - 2) * 9;
        }
    }
    return count;
}

unittest
{
    alias candidate = starts_one_ends;

    assert(candidate(1) == 1);
    assert(candidate(2) == 18);
    assert(candidate(3) == 180);
    assert(candidate(4) == 1800);
    assert(candidate(5) == 18000);
}
void main(){}