/// Check if in given list of numbers, are any two numbers closer to each other than
/// given threshold.
/// >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
/// False
/// >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
/// True
fn has_close_elements(numbers: Vec<f64>, threshold: f64) -> bool {
    let mut sorted_numbers = numbers.clone();
    sorted_numbers.sort_by(|a, b| a.partial_cmp(b).unwrap());
    let mut prev_number = sorted_numbers[0];
    for number in sorted_numbers.iter().skip(1) {
        if (prev_number - number).abs() < threshold {
            return true;
        }
        prev_number = *number;
    }
    false

}

fn main() {
    let candidate = has_close_elements;
    assert_eq!(candidate(vec![1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.3), true);
    assert_eq!(candidate(vec![1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.05), false);
    assert_eq!(candidate(vec![1.0, 2.0, 5.9, 4.0, 5.0], 0.95), true);
    assert_eq!(candidate(vec![1.0, 2.0, 5.9, 4.0, 5.0], 0.8), false);
    assert_eq!(candidate(vec![1.0, 2.0, 3.0, 4.0, 5.0, 2.0], 0.1), true);
    assert_eq!(candidate(vec![1.1, 2.2, 3.1, 4.1, 5.1], 1.0), true);
    assert_eq!(candidate(vec![1.1, 2.2, 3.1, 4.1, 5.1], 0.5), false);
}
