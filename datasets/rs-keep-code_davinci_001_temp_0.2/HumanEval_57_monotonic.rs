/// Return True is list elements are monotonically increasing or decreasing.
/// >>> monotonic([1, 2, 4, 20])
/// True
/// >>> monotonic([1, 20, 4, 10])
/// False
/// >>> monotonic([4, 1, 0, -10])
/// True
fn monotonic(l: Vec<isize>) -> bool {
    let mut increasing = true;
    let mut decreasing = true;
    for i in 0..l.len() - 1 {
        if l[i] > l[i + 1] {
            increasing = false;
        }
        if l[i] < l[i + 1] {
            decreasing = false;
        }
    }
    increasing || decreasing

}

fn main() {
    let candidate = monotonic;
    assert_eq!(candidate(vec![1, 2, 4, 10]), true);
    assert_eq!(candidate(vec![1, 2, 4, 20]), true);
    assert_eq!(candidate(vec![1, 20, 4, 10]), false);
    assert_eq!(candidate(vec![4, 1, 0, -10]), true);
    assert_eq!(candidate(vec![4, 1, 1, 0]), true);
    assert_eq!(candidate(vec![1, 2, 3, 2, 5, 60]), false);
    assert_eq!(candidate(vec![1, 2, 3, 4, 5, 60]), true);
    assert_eq!(candidate(vec![9, 9, 9, 9]), true);
}
