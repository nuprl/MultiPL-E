/// Return sorted unique common elements for two lists.
/// >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
/// [1, 5, 653]
/// >>> common([5, 3, 2, 8], [3, 2])
/// [2, 3]
fn common(l1: Vec<isize>, l2: Vec<isize>) -> Vec<isize> {
    let mut l1 = l1;
    let mut l2 = l2;
    l1.sort();
    l2.sort();
    l1.dedup();
    l2.dedup();
    l1.retain(|&x| l2.contains(&x));
    l1

}

fn main() {
    let candidate = common;
    assert_eq!(candidate(vec![1, 4, 3, 34, 653, 2, 5], vec![5, 7, 1, 5, 9, 653, 121]), vec![1, 5, 653]);
    assert_eq!(candidate(vec![5, 3, 2, 8], vec![3, 2]), vec![2, 3]);
    assert_eq!(candidate(vec![4, 3, 2, 8], vec![3, 2, 4]), vec![2, 3, 4]);
    assert_eq!(candidate(vec![4, 3, 2, 8], Vec::<isize>::new()), Vec::<isize>::new());
}
