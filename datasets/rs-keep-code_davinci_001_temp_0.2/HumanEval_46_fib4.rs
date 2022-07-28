/// The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
/// fib4(0) -> 0
/// fib4(1) -> 0
/// fib4(2) -> 2
/// fib4(3) -> 0
/// fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
/// Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
/// >>> fib4(5)
/// 4
/// >>> fib4(6)
/// 8
/// >>> fib4(7)
/// 14
fn fib4(n: isize) -> isize {
    let mut a = 0;
    let mut b = 0;
    let mut c = 2;
    let mut d = 0;
    for _ in 0..n {
        let e = a + b + c + d;
        a = b;
        b = c;
        c = d;
        d = e;
    }
    d

}

fn main() {
    let candidate = fib4;
    assert_eq!(candidate(5), 4);
    assert_eq!(candidate(8), 28);
    assert_eq!(candidate(10), 104);
    assert_eq!(candidate(12), 386);
}
