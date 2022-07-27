/// The Brazilian factorial is defined as:
/// brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
/// where n > 0
/// For example:
/// >>> special_factorial(4)
/// 288
/// The function will receive an integer as input and should return the special
/// factorial of this integer.
fn special_factorial(n: isize) -> isize {
    if n == 0 {
        1
    } else {
        n * special_factorial(n - 1)
    }

}

fn main() {
    let candidate = special_factorial;
    assert_eq!(candidate(4), 288);
    assert_eq!(candidate(5), 34560);
    assert_eq!(candidate(7), 125411328000);
    assert_eq!(candidate(1), 1);
}
