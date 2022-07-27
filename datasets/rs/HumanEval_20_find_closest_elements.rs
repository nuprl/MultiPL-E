/// From a supplied list of numbers (of length at least two) select and return two that are the closest to each
/// other and return them in order (smaller number, larger number).
/// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
/// (2.0, 2.2)
/// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
/// (2.0, 2.0)
fn find_closest_elements(numbers: Vec<f64>) -> (f64, f64) {
    let mut numbers = numbers;
    numbers.sort_by(|a, b| a.partial_cmp(b).unwrap());
    let mut closest_pair = (numbers[0], numbers[1]);
    for i in 0..numbers.len() - 1 {
        let pair = (numbers[i], numbers[i + 1]);
        if (pair.0 - pair.1).abs() < (closest_pair.0 - closest_pair.1).abs() {
            closest_pair = pair;
        }
    }
    closest_pair

}

fn main() {
    let candidate = find_closest_elements;
    assert_eq!(candidate(vec![1.0, 2.0, 3.9, 4.0, 5.0, 2.2]), (3.9, 4.0));
    assert_eq!(candidate(vec![1.0, 2.0, 5.9, 4.0, 5.0]), (5.0, 5.9));
    assert_eq!(candidate(vec![1.0, 2.0, 3.0, 4.0, 5.0, 2.2]), (2.0, 2.2));
    assert_eq!(candidate(vec![1.0, 2.0, 3.0, 4.0, 5.0, 2.0]), (2.0, 2.0));
    assert_eq!(candidate(vec![1.1, 2.2, 3.1, 4.1, 5.1]), (2.2, 3.1));
}
