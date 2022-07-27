/// Given a list of numbers, return whether or not they are sorted
/// in ascending order. If list has more than 1 duplicate of the same
/// number, return False. Assume no negative numbers and only integers.
/// Examples
/// is_sorted([5]) ➞ True
/// is_sorted([1, 2, 3, 4, 5]) ➞ True
/// is_sorted([1, 3, 2, 4, 5]) ➞ False
/// is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
/// is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
/// is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
/// is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
/// is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
fn is_sorted(lst: Vec<isize>) -> bool {
    let mut sorted = lst.clone();
    sorted.sort();
    sorted == lst

}

fn main() {
    let candidate = is_sorted;
    assert_eq!(candidate(vec![5]), true);
    assert_eq!(candidate(vec![1, 2, 3, 4, 5]), true);
    assert_eq!(candidate(vec![1, 3, 2, 4, 5]), false);
    assert_eq!(candidate(vec![1, 2, 3, 4, 5, 6]), true);
    assert_eq!(candidate(vec![1, 2, 3, 4, 5, 6, 7]), true);
    assert_eq!(candidate(vec![1, 3, 2, 4, 5, 6, 7]), false);
    assert_eq!(candidate(Vec::<isize>::new()), true);
    assert_eq!(candidate(vec![1]), true);
    assert_eq!(candidate(vec![3, 2, 1]), false);
    assert_eq!(candidate(vec![1, 2, 2, 2, 3, 4]), false);
    assert_eq!(candidate(vec![1, 2, 3, 3, 3, 4]), false);
    assert_eq!(candidate(vec![1, 2, 2, 3, 3, 4]), true);
    assert_eq!(candidate(vec![1, 2, 3, 4]), true);
}
