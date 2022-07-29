import std.typecons;
import std.math;
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
Nullable!(int) prod_signs(int[] arr) 
{
    if (arr.length() == 0) {
        return None;
    }
    int sum = 0;
    int product = 1;
    for (int i = 0; i < arr.length(); i++) {
        sum += std.math.abs(arr[i]);
        product *= std.math.sign(arr[i]);
    }
    return sum * product;
}

unittest
{
    alias candidate = prod_signs;

{
        auto result = candidate([1, 2, 2, -4]);
        assert(!result.isNull && result.get == -9);
}

{
        auto result = candidate([0, 1]);
        assert(!result.isNull && result.get == 0);
}

{
        auto result = candidate([1, 1, 1, 2, 3, -1, 1]);
        assert(!result.isNull && result.get == -10);
}

{
        auto result = candidate([]);
        assert(result.isNull);
}

{
        auto result = candidate([2, 4, 1, 2, -1, -1, 9]);
        assert(!result.isNull && result.get == 20);
}

{
        auto result = candidate([-1, 1, -1, 1]);
        assert(!result.isNull && result.get == 4);
}

{
        auto result = candidate([-1, 1, 1, 1]);
        assert(!result.isNull && result.get == -4);
}

{
        auto result = candidate([-1, 1, 1, 0]);
        assert(!result.isNull && result.get == 0);
}

}
void main(){}