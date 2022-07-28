/// Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
/// >>> fizz_buzz(50)
/// 0
/// >>> fizz_buzz(78)
/// 2
/// >>> fizz_buzz(79)
/// 3
fn fizz_buzz(n: isize) -> isize {
    let mut count = 0;
    for i in 1..n {
        if i % 11 == 0 || i % 13 == 0 {
            count += 1;
        }
    }
    count

}

fn main() {
    let candidate = fizz_buzz;
    assert_eq!(candidate(50), 0);
    assert_eq!(candidate(78), 2);
    assert_eq!(candidate(79), 3);
    assert_eq!(candidate(100), 3);
    assert_eq!(candidate(200), 6);
    assert_eq!(candidate(4000), 192);
    assert_eq!(candidate(10000), 639);
    assert_eq!(candidate(100000), 8026);
}
