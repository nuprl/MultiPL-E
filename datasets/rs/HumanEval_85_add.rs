/// Given a non-empty list of integers lst. add the even elements that are at odd indices..
/// Examples:
/// add([4, 2, 6, 7]) ==> 2
fn add(lst: Vec<isize>) -> isize {
    lst.iter().enumerate().filter(|(i, _)| i % 2 == 1).map(|(_, &v)| v).sum()

}

fn main() {
    let candidate = add;
    assert_eq!(candidate(vec![4, 88]), 88);
    assert_eq!(candidate(vec![4, 5, 6, 7, 2, 122]), 122);
    assert_eq!(candidate(vec![4, 0, 6, 7]), 0);
    assert_eq!(candidate(vec![4, 4, 6, 8]), 12);
}
