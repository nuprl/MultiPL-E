/// triples_sum_to_zero takes a list of integers as an input.
/// it returns True if there are three distinct elements in the list that
/// sum to zero, and False otherwise.
/// >>> triples_sum_to_zero([1, 3, 5, 0])
/// False
/// >>> triples_sum_to_zero([1, 3, -2, 1])
/// True
/// >>> triples_sum_to_zero([1, 2, 3, 7])
/// False
/// >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
/// True
/// >>> triples_sum_to_zero([1])
/// False
fn triples_sum_to_zero(l: Vec<isize>) -> bool {
    let mut set = HashSet::new();
    for i in 0..l.len() {
        for j in i + 1..l.len() {
            let sum = l[i] + l[j];
            if set.contains(&sum) {
                return true;
            }
            set.insert(l[j]);
        }
    }
    false

}

fn main() {
    let candidate = triples_sum_to_zero;
    assert_eq!(candidate(vec![1, 3, 5, 0]), false);
    assert_eq!(candidate(vec![1, 3, 5, -1]), false);
    assert_eq!(candidate(vec![1, 3, -2, 1]), true);
    assert_eq!(candidate(vec![1, 2, 3, 7]), false);
    assert_eq!(candidate(vec![1, 2, 5, 7]), false);
    assert_eq!(candidate(vec![2, 4, -5, 3, 9, 7]), true);
    assert_eq!(candidate(vec![1]), false);
    assert_eq!(candidate(vec![1, 3, 5, -100]), false);
    assert_eq!(candidate(vec![100, 3, 5, -100]), false);
}
