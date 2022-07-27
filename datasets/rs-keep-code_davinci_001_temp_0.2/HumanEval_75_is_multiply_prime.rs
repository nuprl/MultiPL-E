/// Write a function that returns true if the given number is the multiplication of 3 prime numbers
/// and false otherwise.
/// Knowing that (a) is less then 100. 
/// Example:
/// is_multiply_prime(30) == True
/// 30 = 2 * 3 * 5
fn is_multiply_prime(a: isize) -> bool {
    let mut i = 2;
    while i < a {
        if a % i == 0 {
            return false;
        }
        i += 1;
    }
    true

}

fn main() {
    let candidate = is_multiply_prime;
    assert_eq!(candidate(5), false);
    assert_eq!(candidate(30), true);
    assert_eq!(candidate(8), true);
    assert_eq!(candidate(10), false);
    assert_eq!(candidate(125), true);
    assert_eq!(candidate(105), true);
    assert_eq!(candidate(126), false);
    assert_eq!(candidate(729), false);
    assert_eq!(candidate(891), false);
    assert_eq!(candidate(1001), true);
}
