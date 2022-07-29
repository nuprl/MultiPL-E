import std.math;
/*
 For a given list of input numbers, calculate Mean Absolute Deviation
    around the mean of this dataset.
    Mean Absolute Deviation is the average absolute difference between each
    element and a centerpoint (mean in this case):
    MAD = average | x - x_mean |
    >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
    1.0
    
*/
float mean_absolute_deviation(float[] numbers) 
{
    float sum = 0.0;
    for (int i = 0; i < numbers.length; i++) {
        sum += numbers[i];
    }
    float mean = sum / numbers.length;
    float sum_deviation = 0.0;
    for (int i = 0; i < numbers.length; i++) {
        sum_deviation += abs(numbers[i] - mean);
    }
    return sum_deviation / numbers.length;
}

unittest
{
    alias candidate = mean_absolute_deviation;

    assert(candidate([1.0, 2.0]) == 0.5);
    assert(candidate([1.0, 2.0, 3.0, 4.0]) == 1.0);
    assert(candidate([1.0, 2.0, 3.0, 4.0, 5.0]) == 1.2);
}
void main(){}