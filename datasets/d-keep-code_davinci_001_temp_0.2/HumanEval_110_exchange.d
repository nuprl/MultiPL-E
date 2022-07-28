
/*
In this problem, you will implement a function that takes two lists of numbers,
    and determines whether it is possible to perform an exchange of elements
    between them to make lst1 a list of only even numbers.
    There is no limit on the number of exchanged elements between lst1 and lst2.
    If it is possible to exchange elements between the lst1 and lst2 to make
    all the elements of lst1 to be even, return "YES".
    Otherwise, return "NO".
    For example:
    exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
    exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
    It is assumed that the input lists will be non-empty.
    
*/
const(char)[] exchange(int[] lst1, int[] lst2) 
{
    // Your code here
    int[] even = new int[lst1.Length];
    int[] odd = new int[lst1.Length];
    int evenCount = 0;
    int oddCount = 0;
    for (int i = 0; i < lst1.Length; i++)
    {
        if (lst1[i] % 2 == 0)
        {
            even[evenCount] = lst1[i];
            evenCount++;
        }
        else
        {
            odd[oddCount] = lst1[i];
            oddCount++;
        }
    }
    for (int i = 0; i < lst2.Length; i++)
    {
        if (lst2[i] % 2 == 0)
        {
            even[evenCount] = lst2[i];
            evenCount++;
        }
        else
        {
            odd[oddCount] = lst2[i];
            oddCount++;
        }
    }
    if (evenCount == lst1.Length && oddCount == 0)
    {
        return "YES";
    }
    else
    {
        return "NO";
    }
}

unittest
{
    alias candidate = exchange;

    assert(candidate([1, 2, 3, 4], [1, 2, 3, 4]) == "YES");
    assert(candidate([1, 2, 3, 4], [1, 5, 3, 4]) == "NO");
    assert(candidate([1, 2, 3, 4], [2, 1, 4, 3]) == "YES");
    assert(candidate([5, 7, 3], [2, 6, 4]) == "YES");
    assert(candidate([5, 7, 3], [2, 6, 3]) == "NO");
    assert(candidate([3, 2, 6, 1, 8, 9], [3, 5, 5, 1, 1, 1]) == "NO");
    assert(candidate([100, 200], [200, 200]) == "YES");
}
void main(){}