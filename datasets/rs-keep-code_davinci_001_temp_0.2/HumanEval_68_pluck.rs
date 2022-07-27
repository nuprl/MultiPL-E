/// "Given an array representing a branch of a tree that has non-negative integer nodes
/// your task is to pluck one of the nodes and return it.
/// The plucked node should be the node with the smallest even value.
/// If multiple nodes with the same smallest even value are found return the node that has smallest index.
/// The plucked node should be returned in a list, [ smalest_value, its index ],
/// If there are no even values or the given array is empty, return [].
/// Example 1:
/// Input: [4,2,3]
/// Output: [2, 1]
/// Explanation: 2 has the smallest even value, and 2 has the smallest index.
/// Example 2:
/// Input: [1,2,3]
/// Output: [2, 1]
/// Explanation: 2 has the smallest even value, and 2 has the smallest index. 
/// Example 3:
/// Input: []
/// Output: []
/// Example 4:
/// Input: [5, 0, 3, 0, 4, 2]
/// Output: [0, 1]
/// Explanation: 0 is the smallest value, but  there are two zeros,
/// so we will choose the first zero, which has the smallest index.
/// Constraints:
/// * 1 <= nodes.length <= 10000
/// * 0 <= node.value
fn pluck(arr: Vec<isize>) -> Vec<isize> {
    let mut arr = arr;
    if arr.len() == 0 {
        return vec![];
    }
    let mut min_even = arr[0];
    let mut min_even_index = 0;
    for (i, &v) in arr.iter().enumerate() {
        if v % 2 == 0 && v < min_even {
            min_even = v;
            min_even_index = i;
        }
    }
    arr.remove(min_even_index);
    return vec![min_even, min_even_index as isize];

}

fn main() {
    let candidate = pluck;
    assert_eq!(candidate(vec![4, 2, 3]), vec![2, 1]);
    assert_eq!(candidate(vec![1, 2, 3]), vec![2, 1]);
    assert_eq!(candidate(Vec::<isize>::new()), Vec::<isize>::new());
    assert_eq!(candidate(vec![5, 0, 3, 0, 4, 2]), vec![0, 1]);
    assert_eq!(candidate(vec![1, 2, 3, 0, 5, 3]), vec![0, 3]);
    assert_eq!(candidate(vec![5, 4, 8, 4, 8]), vec![4, 1]);
    assert_eq!(candidate(vec![7, 6, 7, 1]), vec![6, 1]);
    assert_eq!(candidate(vec![7, 9, 7, 1]), Vec::<isize>::new());
}
