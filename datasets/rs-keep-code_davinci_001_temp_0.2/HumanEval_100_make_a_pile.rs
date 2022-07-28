/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in a list, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(3)
/// [3, 5, 7]
fn make_a_pile(n: isize) -> Vec<isize> {
    let mut res = Vec::new();
    let mut i = n;
    while i > 0 {
        res.push(i);
        i = if i % 2 == 0 { i + 1 } else { i + 2 };
    }
    res

}

fn main() {
    let candidate = make_a_pile;
    assert_eq!(candidate(3), vec![3, 5, 7]);
    assert_eq!(candidate(4), vec![4, 6, 8, 10]);
    assert_eq!(candidate(5), vec![5, 7, 9, 11, 13]);
    assert_eq!(candidate(6), vec![6, 8, 10, 12, 14, 16]);
    assert_eq!(candidate(8), vec![8, 10, 12, 14, 16, 18, 20, 22]);
}
