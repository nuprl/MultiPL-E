/// Return list of prime factors of given integer in the order from smallest to largest.
/// Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
/// Input number should be equal to the product of all factors
/// >>> factorize(8)
/// [2, 2, 2]
/// >>> factorize(25)
/// [5, 5]
/// >>> factorize(70)
/// [2, 5, 7]
fn factorize(n: isize) -> Vec<isize> {
    let mut factors: Vec<isize> = Vec::new();
    let mut n = n;
    let mut i = 2;
    while i * i <= n {
        while n % i == 0 {
            factors.push(i);
            n /= i;
        }
        i += 1;
    }
    if n > 1 {
        factors.push(n);
    }
    factors

}

fn main() {
    let candidate = factorize;
    assert_eq!(candidate(2), vec![2]);
    assert_eq!(candidate(4), vec![2, 2]);
    assert_eq!(candidate(8), vec![2, 2, 2]);
    assert_eq!(candidate(57), vec![3, 19]);
    assert_eq!(candidate(3249), vec![3, 3, 19, 19]);
    assert_eq!(candidate(185193), vec![3, 3, 3, 19, 19, 19]);
    assert_eq!(candidate(20577), vec![3, 19, 19, 19]);
    assert_eq!(candidate(18), vec![2, 3, 3]);
}
