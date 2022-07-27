/// Return list with elements incremented by 1.
/// >>> incr_list([1, 2, 3])
/// [2, 3, 4]
/// >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
/// [6, 4, 6, 3, 4, 4, 10, 1, 124]
fn incr_list(l: Vec<isize>) -> Vec<isize> {
    l.iter().map(|x| x + 1).collect()

}

fn main() {
    let candidate = incr_list;
    assert_eq!(candidate(Vec::<isize>::new()), Vec::<isize>::new());
    assert_eq!(candidate(vec![3, 2, 1]), vec![4, 3, 2]);
    assert_eq!(candidate(vec![5, 2, 5, 2, 3, 3, 9, 0, 123]), vec![6, 3, 6, 3, 4, 4, 10, 1, 124]);
}
