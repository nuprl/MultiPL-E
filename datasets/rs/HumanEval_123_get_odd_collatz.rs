/// Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned list sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
fn get_odd_collatz(n: isize) -> Vec<isize> {
    let mut collatz = Vec::new();
    let mut n = n;
    while n > 1 {
        collatz.push(n);
        if n % 2 == 0 {
            n = n / 2;
        } else {
            n = 3 * n + 1;
        }
    }
    collatz.push(1);
    collatz

}

fn main() {
    let candidate = get_odd_collatz;
    assert_eq!(candidate(14), vec![1, 5, 7, 11, 13, 17]);
    assert_eq!(candidate(5), vec![1, 5]);
    assert_eq!(candidate(12), vec![1, 3, 5]);
    assert_eq!(candidate(1), vec![1]);
}
