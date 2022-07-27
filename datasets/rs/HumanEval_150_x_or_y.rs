/// A simple program which should return the value of x if n is 
/// a prime number and should return the value of y otherwise.
/// Examples:
/// for x_or_y(7, 34, 12) == 34
/// for x_or_y(15, 8, 5) == 5
fn x_or_y(n: isize, x: isize, y: isize) -> isize {
    if is_prime(n) {
        x
    } else {
        y
    }

}

fn main() {
    let candidate = x_or_y;
    assert_eq!(candidate(7, 34, 12), 34);
    assert_eq!(candidate(15, 8, 5), 5);
    assert_eq!(candidate(3, 33, 5212), 33);
    assert_eq!(candidate(1259, 3, 52), 3);
    assert_eq!(candidate(7919, -1, 12), -1);
    assert_eq!(candidate(3609, 1245, 583), 583);
    assert_eq!(candidate(91, 56, 129), 129);
    assert_eq!(candidate(6, 34, 1234), 1234);
    assert_eq!(candidate(1, 2, 0), 0);
    assert_eq!(candidate(2, 2, 0), 2);
}
