/// Return maximum element in the list.
/// >>> max_element([1, 2, 3])
/// 3
/// >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
/// 123
fn max_element(l: Vec<isize>) -> isize {
    let mut max = l[0];
    for i in 1..l.len() {
        if l[i] > max {
            max = l[i];
        }
    }
    max

}

fn main() {
    let candidate = max_element;
    assert_eq!(candidate(vec![1, 2, 3]), 3);
    assert_eq!(candidate(vec![5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10]), 124);
}
