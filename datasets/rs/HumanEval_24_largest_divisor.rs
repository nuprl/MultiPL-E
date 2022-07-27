/// For a given number n, find the largest number that divides n evenly, smaller than n
/// >>> largest_divisor(15)
/// 5
fn largest_divisor(n: isize) -> isize {
    let mut i = n - 1;
    while i > 0 {
        if n % i == 0 {
            return i;
        }
        i -= 1;
    }
    0

}

fn main() {
    let candidate = largest_divisor;
    assert_eq!(candidate(3), 1);
    assert_eq!(candidate(7), 1);
    assert_eq!(candidate(10), 5);
    assert_eq!(candidate(100), 50);
    assert_eq!(candidate(49), 7);
}
