/// This function takes a list l and returns a list l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even([1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even([5, 6, 3, 4])
/// [3, 6, 5, 4]
fn sort_even(l: Vec<isize>) -> Vec<isize> {
    let mut l_even = l.clone();
    let mut l_odd = l.clone();
    l_even.sort();
    l_odd.sort();
    l_odd.reverse();
    let mut l_even_odd = l_even.clone();
    for i in 0..l.len() {
        if i % 2 == 0 {
            l_even_odd[i] = l_odd[i / 2];
        }
    }
    l_even_odd

}

fn main() {
    let candidate = sort_even;
    assert_eq!(candidate(vec![1, 2, 3]), vec![1, 2, 3]);
    assert_eq!(candidate(vec![5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]), vec![-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123]);
    assert_eq!(candidate(vec![5, 8, -12, 4, 23, 2, 3, 11, 12, -10]), vec![-12, 8, 3, 4, 5, 2, 12, 11, 23, -10]);
}
