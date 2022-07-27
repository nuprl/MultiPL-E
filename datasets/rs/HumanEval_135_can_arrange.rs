/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// can_arrange([1,2,4,3,5]) = 3
/// can_arrange([1,2,3]) = -1
fn can_arrange(arr: Vec<isize>) -> isize {
    let mut max_index = -1;
    let mut max_value = -1;
    for (i, v) in arr.iter().enumerate() {
        if *v > max_value {
            max_value = *v;
            max_index = i as isize;
        }
    }
    max_index

}

fn main() {
    let candidate = can_arrange;
    assert_eq!(candidate(vec![1, 2, 4, 3, 5]), 3);
    assert_eq!(candidate(vec![1, 2, 4, 5]), -1);
    assert_eq!(candidate(vec![1, 4, 2, 5, 6, 7, 8, 9, 10]), 2);
    assert_eq!(candidate(vec![4, 8, 5, 7, 3]), 4);
    assert_eq!(candidate(Vec::<isize>::new()), -1);
}
