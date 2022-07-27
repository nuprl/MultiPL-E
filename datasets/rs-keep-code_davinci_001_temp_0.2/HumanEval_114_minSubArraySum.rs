/// Given an array of integers nums, find the minimum sum of any non-empty sub-array
/// of nums.
/// Example
/// minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
/// minSubArraySum([-1, -2, -3]) == -6
fn minSubArraySum(nums: Vec<isize>) -> isize {
    let mut min_sum = std::isize::MAX;
    let mut sum = 0;
    for n in nums {
        sum += n;
        min_sum = std::cmp::min(min_sum, sum);
        sum = std::cmp::min(sum, 0);
    }
    min_sum

}

fn main() {
    let candidate = minSubArraySum;
    assert_eq!(candidate(vec![2, 3, 4, 1, 2, 4]), 1);
    assert_eq!(candidate(vec![-1, -2, -3]), -6);
    assert_eq!(candidate(vec![-1, -2, -3, 2, -10]), -14);
    assert_eq!(candidate(vec![-9999999999999999]), -9999999999999999);
    assert_eq!(candidate(vec![0, 10, 20, 1000000]), 0);
    assert_eq!(candidate(vec![-1, -2, -3, 10, -5]), -6);
    assert_eq!(candidate(vec![100, -1, -2, -3, 10, -5]), -6);
    assert_eq!(candidate(vec![10, 11, 13, 8, 3, 4]), 3);
    assert_eq!(candidate(vec![100, -33, 32, -1, 0, -2]), -33);
    assert_eq!(candidate(vec![-10]), -10);
    assert_eq!(candidate(vec![7]), 7);
    assert_eq!(candidate(vec![1, -1]), -1);
}
