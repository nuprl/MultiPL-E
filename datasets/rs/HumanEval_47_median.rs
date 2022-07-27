/// Return median of elements in the list l.
/// >>> median([3, 1, 2, 4, 5])
/// 3
/// >>> median([-10, 4, 6, 1000, 10, 20])
/// 15.0
fn median(l: Vec<isize>) -> f64 {
    let mut l = l;
    l.sort();
    let len = l.len();
    if len % 2 == 0 {
        (l[len / 2] + l[len / 2 - 1]) as f64 / 2.0
    } else {
        l[len / 2] as f64
    }

}

fn main() {
    let candidate = median;
    assert_eq!(candidate(vec![3, 1, 2, 4, 5]), 3.0);
    assert_eq!(candidate(vec![-10, 4, 6, 1000, 10, 20]), 8.0);
    assert_eq!(candidate(vec![5]), 5.0);
    assert_eq!(candidate(vec![6, 5]), 5.5);
    assert_eq!(candidate(vec![8, 1, 3, 9, 9, 2, 7]), 7.0);
}
