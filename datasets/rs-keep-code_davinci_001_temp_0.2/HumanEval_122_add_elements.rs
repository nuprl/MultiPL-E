/// Given a non-empty array of integers arr and an integer k, return
/// the sum of the elements with at most two digits from the first k elements of arr.
/// Example:
/// Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
/// Output: 24 # sum of 21 + 3
/// Constraints:
/// 1. 1 <= len(arr) <= 100
/// 2. 1 <= k <= len(arr)
fn add_elements(arr: Vec<isize>, k: isize) -> isize {
    let mut sum = 0;
    for i in 0..k {
        sum += arr[i as usize];
    }
    sum

}

fn main() {
    let candidate = add_elements;
    assert_eq!(candidate(vec![1, -2, -3, 41, 57, 76, 87, 88, 99], 3), -4);
    assert_eq!(candidate(vec![111, 121, 3, 4000, 5, 6], 2), 0);
    assert_eq!(candidate(vec![11, 21, 3, 90, 5, 6, 7, 8, 9], 4), 125);
    assert_eq!(candidate(vec![111, 21, 3, 4000, 5, 6, 7, 8, 9], 4), 24);
    assert_eq!(candidate(vec![1], 1), 1);
}
