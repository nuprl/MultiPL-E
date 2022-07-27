/// Concatenate list of strings into a single string
/// >>> concatenate([])
/// ''
/// >>> concatenate(['a', 'b', 'c'])
/// 'abc'
fn concatenate(strings: Vec<String>) -> String {
    let mut result = String::new();
    for s in strings {
        result.push_str(&s);
    }
    result

}

fn main() {
    let candidate = concatenate;
    assert_eq!(candidate(Vec::<String>::new()), String::from(""));
    assert_eq!(candidate(vec![String::from("x"), String::from("y"), String::from("z")]), String::from("xyz"));
    assert_eq!(candidate(vec![String::from("x"), String::from("y"), String::from("z"), String::from("w"), String::from("k")]), String::from("xyzwk"));
}
