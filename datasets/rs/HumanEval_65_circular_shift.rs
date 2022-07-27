/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(12, 1)
/// "21"
/// >>> circular_shift(12, 2)
/// "12"
fn circular_shift(x: isize, shift: isize) -> String {
    let mut digits = digits(x);
    let len = digits.len();
    if shift > len {
        digits.reverse();
        return digits.into_iter().collect();
    }
    let mut shifted = Vec::with_capacity(len);
    for i in 0..len {
        let j = (i + shift) % len;
        shifted.push(digits[j]);
    }
    shifted.into_iter().collect()

}

fn main() {
    let candidate = circular_shift;
    assert_eq!(candidate(100, 2), String::from("001"));
    assert_eq!(candidate(12, 2), String::from("12"));
    assert_eq!(candidate(97, 8), String::from("79"));
    assert_eq!(candidate(12, 1), String::from("21"));
    assert_eq!(candidate(11, 101), String::from("11"));
}
