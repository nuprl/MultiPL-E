/// Return only positive numbers in the list.
/// >>> get_positive([-1, 2, -4, 5, 6])
/// [2, 5, 6]
/// >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
/// [5, 3, 2, 3, 9, 123, 1]
fn get_positive(l: Vec<isize>) -> Vec<isize> {
    l.into_iter().filter(|&x| x > 0).collect()

}

fn main() {
    let candidate = get_positive;
    assert_eq!(candidate(vec![-1, -2, 4, 5, 6]), vec![4, 5, 6]);
    assert_eq!(candidate(vec![5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10]), vec![5, 3, 2, 3, 3, 9, 123, 1]);
    assert_eq!(candidate(vec![-1, -2]), Vec::<isize>::new());
    assert_eq!(candidate(Vec::<isize>::new()), Vec::<isize>::new());
}
