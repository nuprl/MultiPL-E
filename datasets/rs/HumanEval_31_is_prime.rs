/// Return true if a given number is prime, and false otherwise.
/// >>> is_prime(6)
/// False
/// >>> is_prime(101)
/// True
/// >>> is_prime(11)
/// True
/// >>> is_prime(13441)
/// True
/// >>> is_prime(61)
/// True
/// >>> is_prime(4)
/// False
/// >>> is_prime(1)
/// False
fn is_prime(n: isize) -> bool {
    if n == 2 {
        return true;
    }
    if n % 2 == 0 {
        return false;
    }
    let mut i = 3;
    while i * i <= n {
        if n % i == 0 {
            return false;
        }
        i += 2;
    }
    true

}

fn main() {
    let candidate = is_prime;
    assert_eq!(candidate(6), false);
    assert_eq!(candidate(101), true);
    assert_eq!(candidate(11), true);
    assert_eq!(candidate(13441), true);
    assert_eq!(candidate(61), true);
    assert_eq!(candidate(4), false);
    assert_eq!(candidate(1), false);
    assert_eq!(candidate(5), true);
    assert_eq!(candidate(11), true);
    assert_eq!(candidate(17), true);
    assert_eq!(candidate(85), false);
    assert_eq!(candidate(77), false);
    assert_eq!(candidate(255379), false);
}
