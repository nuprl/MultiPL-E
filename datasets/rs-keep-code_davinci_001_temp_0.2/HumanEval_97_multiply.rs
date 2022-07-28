/// Complete the function that takes two integers and returns 
/// the product of their unit digits.
/// Assume the input is always valid.
/// Examples:
/// multiply(148, 412) should return 16.
/// multiply(19, 28) should return 72.
/// multiply(2020, 1851) should return 0.
/// multiply(14,-15) should return 20.
fn multiply(a: isize, b: isize) -> isize {
    let mut a = a;
    let mut b = b;
    let mut result = 0;
    while a > 0 {
        let digit = a % 10;
        a /= 10;
        result += digit * b;
    }
    result

}

fn main() {
    let candidate = multiply;
    assert_eq!(candidate(148, 412), 16);
    assert_eq!(candidate(19, 28), 72);
    assert_eq!(candidate(2020, 1851), 0);
    assert_eq!(candidate(14, -15), 20);
    assert_eq!(candidate(76, 67), 42);
    assert_eq!(candidate(17, 27), 49);
    assert_eq!(candidate(0, 1), 0);
    assert_eq!(candidate(0, 0), 0);
}
