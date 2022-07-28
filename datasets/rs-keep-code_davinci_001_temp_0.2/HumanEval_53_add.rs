/// Add two numbers x and y
/// >>> add(2, 3)
/// 5
/// >>> add(5, 7)
/// 12
fn add(x: isize, y: isize) -> isize {
    x + y

}

fn main() {
    let candidate = add;
    assert_eq!(candidate(0, 1), 1);
    assert_eq!(candidate(1, 0), 1);
    assert_eq!(candidate(2, 3), 5);
    assert_eq!(candidate(5, 7), 12);
    assert_eq!(candidate(7, 5), 12);
}
