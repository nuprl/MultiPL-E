
/*

    You are given an array arr of integers and you need to return
    sum of magnitudes of integers multiplied by product of all signs
    of each number in the array, represented by 1, -1 or 0.
    Note: return None for empty arr.

    Example:
    >>> prod_signs([1, 2, 2, -4]) == -9
    >>> prod_signs([0, 1]) == 0
    >>> prod_signs([]) == None
    
*/
auto prod_signs(int[] arr) 
    => [](int[] arr) {
        if (arr.size() == 0) return none;
        int prod = 1;
        int sum = 0;
        for (int i = 0; i < arr.size(); i++) {
            prod *= arr[i];
            sum += arr[i] > 0 ? arr[i] : -arr[i];
        }
        return prod * sum;
    };

unittest
{
    alias candidate = prod_signs;

    assert(candidate([1, 2, 2, -4]) == -9);
    assert(candidate([0, 1]) == 0);
    assert(candidate([1, 1, 1, 2, 3, -1, 1]) == -10);
    assert(candidate([]) == None);
    assert(candidate([2, 4, 1, 2, -1, -1, 9]) == 20);
    assert(candidate([-1, 1, -1, 1]) == 4);
    assert(candidate([-1, 1, 1, 1]) == -4);
    assert(candidate([-1, 1, 1, 0]) == 0);
}
void main(){}