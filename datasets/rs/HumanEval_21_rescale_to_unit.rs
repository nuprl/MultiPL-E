/// Given list of numbers (of at least two elements), apply a linear transform to that list,
/// such that the smallest number will become 0 and the largest will become 1
/// >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
/// [0.0, 0.25, 0.5, 0.75, 1.0]
fn rescale_to_unit(numbers: Vec<f64>) -> Vec<f64> {
    let mut min = numbers[0];
    let mut max = numbers[0];
    for n in numbers {
        if n < min {
            min = n;
        }
        if n > max {
            max = n;
        }
    }
    let mut result = Vec::new();
    for n in numbers {
        result.push((n - min) / (max - min));
    }
    result

}

fn main() {
    let candidate = rescale_to_unit;
    assert_eq!(candidate(vec![2.0, 49.9]), vec![0.0, 1.0]);
    assert_eq!(candidate(vec![100.0, 49.9]), vec![1.0, 0.0]);
    assert_eq!(candidate(vec![1.0, 2.0, 3.0, 4.0, 5.0]), vec![0.0, 0.25, 0.5, 0.75, 1.0]);
    assert_eq!(candidate(vec![2.0, 1.0, 5.0, 3.0, 4.0]), vec![0.25, 0.0, 1.0, 0.5, 0.75]);
    assert_eq!(candidate(vec![12.0, 11.0, 15.0, 13.0, 14.0]), vec![0.25, 0.0, 1.0, 0.5, 0.75]);
}
