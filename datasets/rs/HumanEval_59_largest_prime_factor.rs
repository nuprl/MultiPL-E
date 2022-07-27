/// Return the largest prime factor of n. Assume n > 1 and is not a prime.
/// >>> largest_prime_factor(13195)
/// 29
/// >>> largest_prime_factor(2048)
/// 2
fn largest_prime_factor(n: isize) -> isize {
    let mut n = n;
    let mut i = 2;
    while i * i <= n {
        while n % i == 0 {
            n /= i;
        }
        i += 1;
    }
    n

}

fn main() {
    let candidate = largest_prime_factor;
    assert_eq!(candidate(15), 5);
    assert_eq!(candidate(27), 3);
    assert_eq!(candidate(63), 7);
    assert_eq!(candidate(330), 11);
    assert_eq!(candidate(13195), 29);
}
