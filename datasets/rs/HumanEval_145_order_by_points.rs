/// Write a function which sorts the given list of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original list.
/// For example:
/// >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
/// >>> order_by_points([]) == []
fn order_by_points(nums: Vec<isize>) -> Vec<isize> {
    let mut nums = nums;
    nums.sort_by(|a, b| {
        let a_points = get_points(a);
        let b_points = get_points(b);
        if a_points == b_points {
            a.cmp(b)
        } else {
            a_points.cmp(&b_points)
        }
    });
    nums

}

fn main() {
    let candidate = order_by_points;
    assert_eq!(candidate(vec![1, 11, -1, -11, -12]), vec![-1, -11, 1, -12, 11]);
    assert_eq!(candidate(vec![1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]), vec![0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457]);
    assert_eq!(candidate(Vec::<isize>::new()), Vec::<isize>::new());
    assert_eq!(candidate(vec![1, -11, -32, 43, 54, -98, 2, -3]), vec![-3, -32, -98, -11, 1, 2, 43, 54]);
    assert_eq!(candidate(vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]), vec![1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9]);
    assert_eq!(candidate(vec![0, 6, 6, -76, -21, 23, 4]), vec![-76, -21, 0, 4, 23, 6, 6]);
}
