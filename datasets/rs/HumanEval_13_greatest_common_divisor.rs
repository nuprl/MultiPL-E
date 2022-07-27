/// Return a greatest common divisor of two integers a and b
/// >>> greatest_common_divisor(3, 5)
/// 1
/// >>> greatest_common_divisor(25, 15)
/// 5
fn greatest_common_divisor(a: isize, b: isize) -> isize {
    if b == 0 {
        a
    } else {
        greatest_common_divisor(b, a % b)
    }

}

fn main() {
    let candidate = greatest_common_divisor;
    assert_eq!(candidate(3, 7), 1);
    assert_eq!(candidate(10, 15), 5);
    assert_eq!(candidate(49, 14), 7);
    assert_eq!(candidate(144, 60), 12);
}
