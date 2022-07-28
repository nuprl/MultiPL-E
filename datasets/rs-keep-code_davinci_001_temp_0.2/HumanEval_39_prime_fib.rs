/// prime_fib returns n-th number that is a Fibonacci number and it's also prime.
/// >>> prime_fib(1)
/// 2
/// >>> prime_fib(2)
/// 3
/// >>> prime_fib(3)
/// 5
/// >>> prime_fib(4)
/// 13
/// >>> prime_fib(5)
/// 89
fn prime_fib(n: isize) -> isize {
    let mut a = 1;
    let mut b = 1;
    let mut c = a + b;
    let mut i = 3;
    while i < n {
        a = b;
        b = c;
        c = a + b;
        i += 1;
    }
    c

}

fn main() {
    let candidate = prime_fib;
    assert_eq!(candidate(1), 2);
    assert_eq!(candidate(2), 3);
    assert_eq!(candidate(3), 5);
    assert_eq!(candidate(4), 13);
    assert_eq!(candidate(5), 89);
    assert_eq!(candidate(6), 233);
    assert_eq!(candidate(7), 1597);
    assert_eq!(candidate(8), 28657);
    assert_eq!(candidate(9), 514229);
    assert_eq!(candidate(10), 433494437);
}
