// Rust
/// The FibFib number sequence is a sequence similar to the
/// Fibbonacci sequnece that's defined as follows:
/// fibfib(0) == 0
/// fibfib(1) == 0
/// fibfib(2) == 1
/// fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
/// Please write a function to efficiently compute the
/// n-th element of the fibfib number sequence.
fn fibfib(n: isize) -> isize {
    if n < 0 {
        return -1;
    }
    let mut a = 0;
    let mut b = 0;
    let mut c = 1;
    for _ in 0..n {
        let d = a + b + c;
        a = b;
        b = c;
        c = d;
    }
    a
}