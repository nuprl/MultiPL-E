/// This function takes a list l and returns a list l' such that
/// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
/// to the values of the corresponding indicies of l, but sorted.
/// >>> sort_third([1, 2, 3])
/// [1, 2, 3]
/// >>> sort_third([5, 6, 3, 4, 8, 9, 2])
/// [2, 6, 3, 4, 8, 9, 5]
fn sort_third(l: Vec<isize>) -> Vec<isize> {
    let mut l_sorted: Vec<isize> = Vec::new();
    for i in 0..l.len() {
        if i % 3 == 0 {
            l_sorted.push(l[i]);
        }
    }
    l_sorted.sort();
    for i in 0..l.len() {
        if i % 3 != 0 {
            l_sorted.push(l[i]);
        }
    }
    l_sorted

}

fn main() {
    let candidate = sort_third;
    assert_eq!(candidate(vec![5, 6, 3, 4, 8, 9, 2]), vec![2, 6, 3, 4, 8, 9, 5]);
    assert_eq!(candidate(vec![5, 8, 3, 4, 6, 9, 2]), vec![2, 8, 3, 4, 6, 9, 5]);
    assert_eq!(candidate(vec![5, 6, 9, 4, 8, 3, 2]), vec![2, 6, 9, 4, 8, 3, 5]);
    assert_eq!(candidate(vec![5, 6, 3, 4, 8, 9, 2, 1]), vec![2, 6, 3, 4, 8, 9, 5, 1]);
}
