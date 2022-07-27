/// Task
/// We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
/// then check if the result string is palindrome.
/// A string is called palindrome if it reads the same backward as forward.
/// You should return a tuple containing the result string and True/False for the check.
/// Example
/// For s = "abcde", c = "ae", the result should be ('bcd',False)
/// For s = "abcdef", c = "b"  the result should be ('acdef',False)
/// For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
fn reverse_delete(s: String, c: String) -> (String, bool) {
    let mut result: String = String::new();
    for i in s.chars() {
        if !c.contains(i) {
            result.push(i);
        }
    }
    let mut result_rev: String = result.chars().rev().collect();
    if result == result_rev {
        return (result, true);
    } else {
        return (result, false);
    }

}

fn main() {
    let candidate = reverse_delete;
    assert_eq!(candidate(String::from("abcde"), String::from("ae")), (String::from("bcd"), false));
    assert_eq!(candidate(String::from("abcdef"), String::from("b")), (String::from("acdef"), false));
    assert_eq!(candidate(String::from("abcdedcba"), String::from("ab")), (String::from("cdedc"), true));
    assert_eq!(candidate(String::from("dwik"), String::from("w")), (String::from("dik"), false));
    assert_eq!(candidate(String::from("a"), String::from("a")), (String::from(""), true));
    assert_eq!(candidate(String::from("abcdedcba"), String::from("")), (String::from("abcdedcba"), true));
    assert_eq!(candidate(String::from("abcdedcba"), String::from("v")), (String::from("abcdedcba"), true));
    assert_eq!(candidate(String::from("vabba"), String::from("v")), (String::from("abba"), true));
    assert_eq!(candidate(String::from("mamma"), String::from("mia")), (String::from(""), true));
}
