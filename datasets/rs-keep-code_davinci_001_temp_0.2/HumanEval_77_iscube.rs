/// Write a function that takes an integer a and returns True 
/// if this ingeger is a cube of some integer number.
/// Note: you may assume the input is always valid.
/// Examples:
/// iscube(1) ==> True
/// iscube(2) ==> False
/// iscube(-1) ==> True
/// iscube(64) ==> True
/// iscube(0) ==> True
/// iscube(180) ==> False
fn iscube(a: isize) -> bool {
    if a == 0 {
        return true;
    }
    let mut x = a.abs();
    let mut y = 0;
    while x > 0 {
        y += 1;
        x = x / 3;
    }
    if x == 0 {
        return true;
    }
    return false;

}

fn main() {
    let candidate = iscube;
    assert_eq!(candidate(1), true);
    assert_eq!(candidate(2), false);
    assert_eq!(candidate(-1), true);
    assert_eq!(candidate(64), true);
    assert_eq!(candidate(180), false);
    assert_eq!(candidate(1000), true);
    assert_eq!(candidate(0), true);
    assert_eq!(candidate(1729), false);
}
