from typing import List

def mean_absolute_deviation(numbers: List[float]) -> float:
    """ For a given list of input numbers, calculate Mean Absolute Deviation
    around the mean of this dataset.
    Mean Absolute Deviation is the average absolute difference between each
    element and a centerpoint (mean in this case):
    MAD = average | x - x_mean |
    >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
    1.0
    """
    # Calculate the mean of the input numbers
    mean = sum(numbers) / len(numbers)
    # Calculate the absolute differences between each element and the mean
    diffs = [abs(x - mean) for x in numbers]
    # Calculate the average of the differences
    mad = sum(diffs) / len(diffs)
    return mad


def check(candidate):
    assert candidate([1.0, 2.0]) == 0.5
    assert candidate([1.0, 2.0, 3.0, 4.0]) == 1.0
    assert candidate([1.0, 2.0, 3.0, 4.0, 5.0]) == 1.2

def test_check():
    check(mean_absolute_deviation)

test_check()
