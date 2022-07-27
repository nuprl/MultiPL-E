/// Given an array arr of integers, find the minimum number of elements that
/// need to be changed to make the array palindromic. A palindromic array is an array that
/// is read the same backwards and forwards. In one change, you can change one element to any other element.
/// For example:
/// smallest_change([1,2,3,5,4,7,9,6]) == 4
/// smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
/// smallest_change([1, 2, 3, 2, 1]) == 0
fn smallest_change(arr: Vec<isize>) -> isize {
    let mut count = 0;
    let mut i = 0;
    let mut j = arr.len() - 1;
    while i < j {
        if arr[i] != arr[j] {
            count += 1;
        }
        i += 1;
        j -= 1;
    }
    count

}

fn main() {
    let candidate = smallest_change;
    assert_eq!(candidate(vec![1, 2, 3, 5, 4, 7, 9, 6]), 4);
    assert_eq!(candidate(vec![1, 2, 3, 4, 3, 2, 2]), 1);
    assert_eq!(candidate(vec![1, 4, 2]), 1);
    assert_eq!(candidate(vec![1, 4, 4, 2]), 1);
    assert_eq!(candidate(vec![1, 2, 3, 2, 1]), 0);
    assert_eq!(candidate(vec![3, 1, 1, 3]), 0);
    assert_eq!(candidate(vec![1]), 0);
    assert_eq!(candidate(vec![0, 1]), 1);
}
