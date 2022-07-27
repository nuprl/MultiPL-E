/// You are given a list of integers.
/// Write a function next_smallest() that returns the 2nd smallest element of the list.
/// Return None if there is no such element.
/// next_smallest([1, 2, 3, 4, 5]) == 2
/// next_smallest([5, 1, 4, 3, 2]) == 2
/// next_smallest([]) == None
/// next_smallest([1, 1]) == None
fn next_smallest(lst: Vec<isize>) -> Option<isize> {
    let mut lst = lst;
    lst.sort();
    if lst.len() < 2 {
        return None;
    }
    Some(lst[1])

}

fn main() {
    let candidate = next_smallest;
    assert_eq!(candidate(vec![1, 2, 3, 4, 5]), Some(2));
    assert_eq!(candidate(vec![5, 1, 4, 3, 2]), Some(2));
    assert_eq!(candidate(Vec::<isize>::new()), None);
    assert_eq!(candidate(vec![1, 1]), None);
    assert_eq!(candidate(vec![1, 1, 1, 1, 0]), Some(1));
    assert_eq!(candidate(vec![1, 1]), None);
    assert_eq!(candidate(vec![-35, 34, 12, -45]), Some(-35));
}
