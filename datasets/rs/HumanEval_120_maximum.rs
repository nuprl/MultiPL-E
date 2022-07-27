/// Given an array arr of integers and a positive integer k, return a sorted list 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// Input: arr = [-3, -4, 5], k = 3
/// Output: [-4, -3, 5]
/// Example 2:
/// Input: arr = [4, -4, 4], k = 2
/// Output: [4, 4]
/// Example 3:
/// Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
/// Output: [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
fn maximum(arr: Vec<isize>, k: isize) -> Vec<isize> {
    let mut arr = arr;
    arr.sort_unstable();
    arr.reverse();
    arr.into_iter().take(k as usize).collect()

}

fn main() {
    let candidate = maximum;
    assert_eq!(candidate(vec![-3, -4, 5], 3), vec![-4, -3, 5]);
    assert_eq!(candidate(vec![4, -4, 4], 2), vec![4, 4]);
    assert_eq!(candidate(vec![-3, 2, 1, 2, -1, -2, 1], 1), vec![2]);
    assert_eq!(candidate(vec![123, -123, 20, 0, 1, 2, -3], 3), vec![2, 20, 123]);
    assert_eq!(candidate(vec![-123, 20, 0, 1, 2, -3], 4), vec![0, 1, 2, 20]);
    assert_eq!(candidate(vec![5, 15, 0, 3, -13, -8, 0], 7), vec![-13, -8, 0, 0, 3, 5, 15]);
    assert_eq!(candidate(vec![-1, 0, 2, 5, 3, -10], 2), vec![3, 5]);
    assert_eq!(candidate(vec![1, 0, 5, -7], 1), vec![5]);
    assert_eq!(candidate(vec![4, -4], 2), vec![-4, 4]);
    assert_eq!(candidate(vec![-10, 10], 2), vec![-10, 10]);
    assert_eq!(candidate(vec![1, 2, 3, -23, 243, -400, 0], 0), Vec::<isize>::new());
}
