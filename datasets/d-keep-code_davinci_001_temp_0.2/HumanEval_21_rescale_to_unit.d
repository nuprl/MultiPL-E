
/*
 Given list of numbers (of at least two elements), apply a linear transform to that list,
    such that the smallest number will become 0 and the largest will become 1
    >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
    [0.0, 0.25, 0.5, 0.75, 1.0]
    
*/
float[] rescale_to_unit(float[] numbers) 
{
    float min = numbers[0];
    float max = numbers[0];
    for (int i = 0; i < numbers.Length; i++)
    {
        if (numbers[i] < min)
        {
            min = numbers[i];
        }
        if (numbers[i] > max)
        {
            max = numbers[i];
        }
    }
    float[] result = new float[numbers.Length];
    for (int i = 0; i < numbers.Length; i++)
    {
        result[i] = (numbers[i] - min) / (max - min);
    }
    return result;
}

unittest
{
    alias candidate = rescale_to_unit;

    assert(candidate([2.0, 49.9]) == [0.0, 1.0]);
    assert(candidate([100.0, 49.9]) == [1.0, 0.0]);
    assert(candidate([1.0, 2.0, 3.0, 4.0, 5.0]) == [0.0, 0.25, 0.5, 0.75, 1.0]);
    assert(candidate([2.0, 1.0, 5.0, 3.0, 4.0]) == [0.25, 0.0, 1.0, 0.5, 0.75]);
    assert(candidate([12.0, 11.0, 15.0, 13.0, 14.0]) == [0.25, 0.0, 1.0, 0.5, 0.75]);
}
void main(){}