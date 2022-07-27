/// Out of list of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return None in case the input list is empty.
/// >>> longest([])
/// >>> longest(['a', 'b', 'c'])
/// 'a'
/// >>> longest(['a', 'bb', 'ccc'])
/// 'ccc'
fn longest(strings: Vec<String>) -> Option<String> {
    if strings.is_empty() {
        None
    } else {
        let mut longest = strings[0].clone();
        for s in strings {
            if s.len() > longest.len() {
                longest = s;
            }
        }
        Some(longest)
    }

}

fn main() {
    let candidate = longest;
    assert_eq!(candidate(Vec::<String>::new()), None);
    assert_eq!(candidate(vec![String::from("x"), String::from("y"), String::from("z")]), Some(String::from("x")));
    assert_eq!(candidate(vec![String::from("x"), String::from("yyy"), String::from("zzzz"), String::from("www"), String::from("kkkk"), String::from("abc")]), Some(String::from("zzzz")));
}
