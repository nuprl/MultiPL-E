""" For a given list of input numbers, calculate Mean Absolute Deviation
    around the mean of this dataset.
    Mean Absolute Deviation is the average absolute difference between each
    element and a centerpoint (mean in this case):
    MAD = average | x - x_mean |
    >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
    1.0
    """
function mean_absolute_deviation(numbers::Vector{Float64})::Float64 
    # Calculate the mean of the input numbers
    mean = mean(numbers)
    # Calculate the absolute difference between each element and the mean
    absolute_differences = abs.(numbers .- mean)
    # Calculate the average of the absolute differences
    mean_absolute_deviation = mean(absolute_differences)
    return mean_absolute_deviation
end
mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])


using Test

@testset begin

candidate = mean_absolute_deviation;
	@test(candidate([1.0, 2.0]) == 0.5)
	@test(candidate([1.0, 2.0, 3.0, 4.0]) == 1.0)
	@test(candidate([1.0, 2.0, 3.0, 4.0, 5.0]) == 1.2)
end
