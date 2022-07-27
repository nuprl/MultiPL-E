/// Given a positive floating point number, it can be decomposed into
/// and integer part (largest integer smaller than given number) and decimals
/// (leftover part always smaller than 1).
/// Return the decimal part of the number.
/// >>> truncate_number(3.5)
/// 0.5
fn truncate_number(number: f64) -> f64 {
    let mut number = number;
    let mut decimals = 0.0;
    while number > 1.0 {
        number /= 10.0;
        decimals += 1.0;
    }
    decimals

}

fn main() {
    let candidate = truncate_number;
    assert_eq!(candidate(3.5), 0.5);
    assert_eq!(candidate(1.25), 0.25);
    assert_eq!(candidate(123.0), 0.0);
}
