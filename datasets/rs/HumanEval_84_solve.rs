/// Given a positive integer N, return the total sum of its digits in binary.
/// Example
/// For N = 1000, the sum of digits will be 1 the output should be "1".
/// For N = 150, the sum of digits will be 6 the output should be "110".
/// For N = 147, the sum of digits will be 12 the output should be "1100".
/// Variables:
/// @N integer
/// Constraints: 0 ≤ N ≤ 10000.
/// Output:
/// a string of binary number
fn solve(N: isize) -> String {
    let mut sum = 0;
    let mut n = N;
    while n > 0 {
        sum += n % 2;
        n /= 2;
    }
    sum.to_string()

}

fn main() {
    let candidate = solve;
    assert_eq!(candidate(1000), String::from("1"));
    assert_eq!(candidate(150), String::from("110"));
    assert_eq!(candidate(147), String::from("1100"));
    assert_eq!(candidate(333), String::from("1001"));
    assert_eq!(candidate(963), String::from("10010"));
}
