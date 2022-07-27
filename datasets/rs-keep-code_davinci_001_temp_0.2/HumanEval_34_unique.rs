/// Return sorted unique elements in a list
/// >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
/// [0, 2, 3, 5, 9, 123]
fn unique(l: Vec<isize>) -> Vec<isize> {
    let mut v = l.clone();
    v.sort();
    v.dedup();
    v

}

fn main() {
    let candidate = unique;
    assert_eq!(candidate(vec![5, 3, 5, 2, 3, 3, 9, 0, 123]), vec![0, 2, 3, 5, 9, 123]);
}
