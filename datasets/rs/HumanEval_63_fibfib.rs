/// The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
/// fibfib(0) == 0
/// fibfib(1) == 0
/// fibfib(2) == 1
/// fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
/// Please write a function to efficiently compute the n-th element of the fibfib number sequence.
/// >>> fibfib(1)
/// 0
/// >>> fibfib(5)
/// 4
/// >>> fibfib(8)
/// 24
fn fibfib(n: isize) -> isize {
    if n == 0 {
        return 0;
    }
    if n == 1 {
        return 0;
    }
    if n == 2 {
        return 1;
    }
    let mut a = 0;
    let mut b = 0;
    let mut c = 1;
    for _ in 3..n+1 {
        a = b;
        b = c;
        c = a + b + c;
    }
    c

}

fn main() {
    let candidate = fibfib;
    assert_eq!(candidate(2), 1);
    assert_eq!(candidate(1), 0);
    assert_eq!(candidate(5), 4);
    assert_eq!(candidate(8), 24);
    assert_eq!(candidate(10), 81);
    assert_eq!(candidate(12), 274);
    assert_eq!(candidate(14), 927);
}
