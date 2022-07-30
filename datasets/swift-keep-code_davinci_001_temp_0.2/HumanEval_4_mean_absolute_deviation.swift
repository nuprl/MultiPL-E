// For a given list of input numbers, calculate Mean Absolute Deviation
// around the mean of this dataset.
// Mean Absolute Deviation is the average absolute difference between each
// element and a centerpoint (mean in this case):
// MAD = average | x - x_mean |
// >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
// 1.0
func mean_absolute_deviation(numbers: [Double]) -> Double {
	fatalError("unimplemented")

}

assert(mean_absolute_deviation(numbers: [1.0, 2.0]) == 0.5)
assert(mean_absolute_deviation(numbers: [1.0, 2.0, 3.0, 4.0]) == 1.0)
assert(mean_absolute_deviation(numbers: [1.0, 2.0, 3.0, 4.0, 5.0]) == 1.2)