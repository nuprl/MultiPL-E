/// Return True if all numbers in the list l are below threshold t.
/// >>> below_threshold([1, 2, 4, 10], 100)
/// True
/// >>> below_threshold([1, 20, 4, 10], 5)
/// False
fn below_threshold(l: Vec<isize>, t: isize) -> bool {
    l.iter().all(|x| *x < t)

}

fn main() {
    let candidate = below_threshold;
    assert_eq!(candidate(vec![1, 2, 4, 10], 100), true);
    assert_eq!(candidate(vec![1, 20, 4, 10], 5), false);
    assert_eq!(candidate(vec![1, 20, 4, 10], 21), true);
    assert_eq!(candidate(vec![1, 20, 4, 10], 22), true);
    assert_eq!(candidate(vec![1, 8, 4, 10], 11), true);
    assert_eq!(candidate(vec![1, 8, 4, 10], 10), false);
}
