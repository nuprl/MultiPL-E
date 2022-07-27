/// For a given list of input numbers, calculate Mean Absolute Deviation
/// around the mean of this dataset.
/// Mean Absolute Deviation is the average absolute difference between each
/// element and a centerpoint (mean in this case):
/// MAD = average | x - x_mean |
/// >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
/// 1.0
fn mean_absolute_deviation(numbers: Vec<f64>) -> f64 {
    let mean = mean(numbers);
    numbers.iter().map(|x| (x - mean).abs()).sum::<f64>() / numbers.len() as f64

}

fn main() {
    let candidate = mean_absolute_deviation;
    assert_eq!(candidate(vec![1.0, 2.0]), 0.5);
    assert_eq!(candidate(vec![1.0, 2.0, 3.0, 4.0]), 1.0);
    assert_eq!(candidate(vec![1.0, 2.0, 3.0, 4.0, 5.0]), 1.2);
}
