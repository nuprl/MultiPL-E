/// Filter an input list of strings only for ones that contain given substring
/// >>> filter_by_substring([], 'a')
/// []
/// >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
/// ['abc', 'bacd', 'array']
fn filter_by_substring(strings: Vec<String>, substring: String) -> Vec<String> {
    strings
        .into_iter()
        .filter(|s| s.contains(&substring))
        .collect()

}

fn main() {
    let candidate = filter_by_substring;
    assert_eq!(candidate(Vec::<String>::new(), String::from("john")), Vec::<String>::new());
    assert_eq!(candidate(vec![String::from("xxx"), String::from("asd"), String::from("xxy"), String::from("john doe"), String::from("xxxAAA"), String::from("xxx")], String::from("xxx")), vec![String::from("xxx"), String::from("xxxAAA"), String::from("xxx")]);
    assert_eq!(candidate(vec![String::from("xxx"), String::from("asd"), String::from("aaaxxy"), String::from("john doe"), String::from("xxxAAA"), String::from("xxx")], String::from("xx")), vec![String::from("xxx"), String::from("aaaxxy"), String::from("xxxAAA"), String::from("xxx")]);
    assert_eq!(candidate(vec![String::from("grunt"), String::from("trumpet"), String::from("prune"), String::from("gruesome")], String::from("run")), vec![String::from("grunt"), String::from("prune")]);
}
