# For a given list of input numbers, calculate Mean Absolute Deviation
-- around the mean of this dataset.
-- Mean Absolute Deviation is the average absolute difference between each
-- element and a centerpoint (mean in this case):
-- MAD = average | x - x_mean |
-- >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
-- 1.0
mean_absolute_deviation <- function(numbers)
    abs_diff <- abs(numbers - mean(numbers))
    mean(abs_diff)
end
mean_absolute_deviation(c(1.0, 2.0, 3.0, 4.0))


test_humaneval <- function() {
candidate <- mean_absolute_deviation
    if(!identical(candidate(c(1.0, 2.0)), 0.5)){quit('no', 1)}
    if(!identical(candidate(c(1.0, 2.0, 3.0, 4.0)), 1.0)){quit('no', 1)}
    if(!identical(candidate(c(1.0, 2.0, 3.0, 4.0, 5.0)), 1.2)){quit('no', 1)}
}