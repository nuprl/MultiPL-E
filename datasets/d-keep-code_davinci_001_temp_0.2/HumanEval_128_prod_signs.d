import std.math;
import std.typecons;
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
Nullable!(long) prod_signs(long[] arr) 
{
    if (arr.length == 0) {
        return None;
    }
    var sum = 0;
    var prod = 1;
    for (var i = 0; i < arr.length; i++) {
        var num = arr[i];
        sum += std.math.abs(num);
        prod *= std.math.sign(num);
    }
    return sum * prod;
}

unittest
{
    alias candidate = prod_signs;

{
        auto result = candidate([1L, 2L, 2L, -4L]);
        assert(!result.isNull && result.get == -9L);
}

{
        auto result = candidate([0L, 1L]);
        assert(!result.isNull && result.get == 0L);
}

{
        auto result = candidate([1L, 1L, 1L, 2L, 3L, -1L, 1L]);
        assert(!result.isNull && result.get == -10L);
}

{
        auto result = candidate([]);
        assert(result.isNull);
}

{
        auto result = candidate([2L, 4L, 1L, 2L, -1L, -1L, 9L]);
        assert(!result.isNull && result.get == 20L);
}

{
        auto result = candidate([-1L, 1L, -1L, 1L]);
        assert(!result.isNull && result.get == 4L);
}

{
        auto result = candidate([-1L, 1L, 1L, 1L]);
        assert(!result.isNull && result.get == -4L);
}

{
        auto result = candidate([-1L, 1L, 1L, 0L]);
        assert(!result.isNull && result.get == 0L);
}

}
void main(){}