import std.math;
import std.typecons;
/*
 From a supplied list of numbers (of length at least two) select and return two that are the closest to each
    other and return them in order (smaller number, larger number).
    >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
    (2.0, 2.2)
    >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
    (2.0, 2.0)
    
*/
Tuple!(float, float) find_closest_elements(float[] numbers) 
{
    float min_diff = std.math.inf;
    Tuple!(float, float) result;
    for (int i = 0; i < numbers.length; i++)
    {
        for (int j = i + 1; j < numbers.length; j++)
        {
            float diff = numbers[i] - numbers[j];
            if (diff < 0)
            {
                diff = -diff;
            }
            if (diff < min_diff)
            {
                min_diff = diff;
                result = Tuple!(numbers[i], numbers[j]);
            }
        }
    }
    return result;
}

unittest
{
    alias candidate = find_closest_elements;

    assert(candidate([1.0, 2.0, 3.9, 4.0, 5.0, 2.2]) == tuple(3.9, 4.0));
    assert(candidate([1.0, 2.0, 5.9, 4.0, 5.0]) == tuple(5.0, 5.9));
    assert(candidate([1.0, 2.0, 3.0, 4.0, 5.0, 2.2]) == tuple(2.0, 2.2));
    assert(candidate([1.0, 2.0, 3.0, 4.0, 5.0, 2.0]) == tuple(2.0, 2.0));
    assert(candidate([1.1, 2.2, 3.1, 4.1, 5.1]) == tuple(2.2, 3.1));
}
void main(){}