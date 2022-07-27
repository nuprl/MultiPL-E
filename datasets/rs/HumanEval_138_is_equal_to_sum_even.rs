/// Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
/// Example
/// is_equal_to_sum_even(4) == False
/// is_equal_to_sum_even(6) == False
/// is_equal_to_sum_even(8) == True
fn is_equal_to_sum_even(n: isize) -> bool {
    let mut sum = 0;
    for i in 1..n {
        if i % 2 == 0 {
            sum += i;
        }
    }
    if sum == n {
        return true;
    }
    false

}

fn main() {
    let candidate = is_equal_to_sum_even;
    assert_eq!(candidate(4), false);
    assert_eq!(candidate(6), false);
    assert_eq!(candidate(8), true);
    assert_eq!(candidate(10), true);
    assert_eq!(candidate(11), false);
    assert_eq!(candidate(12), true);
    assert_eq!(candidate(13), false);
    assert_eq!(candidate(16), true);
}
