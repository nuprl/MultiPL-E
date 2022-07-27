/// Return length of given string
/// >>> strlen('')
/// 0
/// >>> strlen('abc')
/// 3
fn strlen(string: String) -> isize {
    string.len() as isize

}

fn main() {
    let candidate = strlen;
    assert_eq!(candidate(String::from("")), 0);
    assert_eq!(candidate(String::from("x")), 1);
    assert_eq!(candidate(String::from("asdasnakj")), 9);
}
