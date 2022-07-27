/// Write a function that returns True if the object q will fly, and False otherwise.
/// The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
/// Example:
/// will_it_fly([1, 2], 5) ➞ False 
/// # 1+2 is less than the maximum possible weight, but it's unbalanced.
/// will_it_fly([3, 2, 3], 1) ➞ False
/// # it's balanced, but 3+2+3 is more than the maximum possible weight.
/// will_it_fly([3, 2, 3], 9) ➞ True
/// # 3+2+3 is less than the maximum possible weight, and it's balanced.
/// will_it_fly([3], 5) ➞ True
/// # 3 is less than the maximum possible weight, and it's balanced.
fn will_it_fly(q: Vec<isize>, w: isize) -> bool {
    let sum: isize = q.iter().sum();
    let is_balanced = q.iter().rev().zip(q.iter()).all(|(a, b)| a == b);
    sum <= w && is_balanced

}

fn main() {
    let candidate = will_it_fly;
    assert_eq!(candidate(vec![3, 2, 3], 9), true);
    assert_eq!(candidate(vec![1, 2], 5), false);
    assert_eq!(candidate(vec![3], 5), true);
    assert_eq!(candidate(vec![3, 2, 3], 1), false);
    assert_eq!(candidate(vec![1, 2, 3], 6), false);
    assert_eq!(candidate(vec![5], 5), true);
}
