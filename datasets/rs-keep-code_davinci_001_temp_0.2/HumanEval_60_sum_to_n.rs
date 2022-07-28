/// sum_to_n is a function that sums numbers from 1 to n.
/// >>> sum_to_n(30)
/// 465
/// >>> sum_to_n(100)
/// 5050
/// >>> sum_to_n(5)
/// 15
/// >>> sum_to_n(10)
/// 55
/// >>> sum_to_n(1)
/// 1
fn sum_to_n(n: isize) -> isize {
    let mut sum = 0;
    for i in 1..n+1 {
        sum += i;
    }
    sum

}

fn main() {
    let candidate = sum_to_n;
    assert_eq!(candidate(1), 1);
    assert_eq!(candidate(6), 21);
    assert_eq!(candidate(11), 66);
    assert_eq!(candidate(30), 465);
    assert_eq!(candidate(100), 5050);
}
