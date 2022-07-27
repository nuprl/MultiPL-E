/// Return list of all prefixes from shortest to longest of the input string
/// >>> all_prefixes('abc')
/// ['a', 'ab', 'abc']
fn all_prefixes(string: String) -> Vec<String> {
    let mut prefixes = Vec::new();
    let mut prefix = String::new();
    for c in string.chars() {
        prefix.push(c);
        prefixes.push(prefix.clone());
    }
    prefixes

}

fn main() {
    let candidate = all_prefixes;
    assert_eq!(candidate(String::from("")), Vec::<String>::new());
    assert_eq!(candidate(String::from("asdfgh")), vec![String::from("a"), String::from("as"), String::from("asd"), String::from("asdf"), String::from("asdfg"), String::from("asdfgh")]);
    assert_eq!(candidate(String::from("WWW")), vec![String::from("W"), String::from("WW"), String::from("WWW")]);
}
