
/*
 For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
    Empty sum should be equal to 0 and empty product should be equal to 1.
    >>> sum_product([])
    (0, 1)
    >>> sum_product([1, 2, 3, 4])
    (10, 24)
    
*/
Tuple!(int, int) sum_product(int[] numbers) 
{
    int sum = 0;
    int product = 1;
    foreach (int number in numbers)
    {
        sum += number;
        product *= number;
    }
    return (sum, product);
}

unittest
{
    alias candidate = sum_product;

    assert(candidate([]) == tuple(0, 1));
    assert(candidate([1, 1, 1]) == tuple(3, 1));
    assert(candidate([100, 0]) == tuple(100, 0));
    assert(candidate([3, 5, 7]) == tuple(15, 105));
    assert(candidate([10]) == tuple(10, 10));
}
void main(){}