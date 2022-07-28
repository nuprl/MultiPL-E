/// Given an array of non-negative integers, return a copy of the given array after sorting,
/// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
/// or sort it in descending order if the sum( first index value, last index value) is even.
/// Note:
/// * don't change the given array.
/// Examples:
/// * sort_array([]) => []
/// * sort_array([5]) => [5]
/// * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
/// * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
fn sort_array(array: Vec<isize>) -> Vec<isize> {
    let mut sorted_array = array.clone();
    sorted_array.sort();
    if array.iter().sum::<isize>() % 2 == 0 {
        sorted_array.reverse();
    }
    sorted_array

}

fn main() {
    let candidate = sort_array;
    assert_eq!(candidate(Vec::<isize>::new()), Vec::<isize>::new());
    assert_eq!(candidate(vec![5]), vec![5]);
    assert_eq!(candidate(vec![2, 4, 3, 0, 1, 5]), vec![0, 1, 2, 3, 4, 5]);
    assert_eq!(candidate(vec![2, 4, 3, 0, 1, 5, 6]), vec![6, 5, 4, 3, 2, 1, 0]);
    assert_eq!(candidate(vec![2, 1]), vec![1, 2]);
    assert_eq!(candidate(vec![15, 42, 87, 32, 11, 0]), vec![0, 11, 15, 32, 42, 87]);
    assert_eq!(candidate(vec![21, 14, 23, 11]), vec![23, 21, 14, 11]);
}
