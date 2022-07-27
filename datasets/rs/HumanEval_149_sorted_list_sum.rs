/// Write a function that accepts a list of strings as a parameter,
/// deletes the strings that have odd lengths from it,
/// and returns the resulted list with a sorted order,
/// The list is always a list of strings and never an array of numbers,
/// and it may contain duplicates.
/// The order of the list should be ascending by length of each word, and you
/// should return the list sorted by that rule.
/// If two words have the same length, sort the list alphabetically.
/// The function should return a list of strings in sorted order.
/// You may assume that all words will have the same length.
/// For example:
/// assert list_sort(["aa", "a", "aaa"]) => ["aa"]
/// assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
fn sorted_list_sum(lst: Vec<String>) -> Vec<String> {
    let mut lst_sorted = lst.clone();
    lst_sorted.sort_by(|a, b| {
        let a_len = a.len();
        let b_len = b.len();
        if a_len == b_len {
            a.cmp(b)
        } else {
            a_len.cmp(&b_len)
        }
    });
    lst_sorted

}

fn main() {
    let candidate = sorted_list_sum;
    assert_eq!(candidate(vec![String::from("aa"), String::from("a"), String::from("aaa")]), vec![String::from("aa")]);
    assert_eq!(candidate(vec![String::from("school"), String::from("AI"), String::from("asdf"), String::from("b")]), vec![String::from("AI"), String::from("asdf"), String::from("school")]);
    assert_eq!(candidate(vec![String::from("d"), String::from("b"), String::from("c"), String::from("a")]), Vec::<String>::new());
    assert_eq!(candidate(vec![String::from("d"), String::from("dcba"), String::from("abcd"), String::from("a")]), vec![String::from("abcd"), String::from("dcba")]);
    assert_eq!(candidate(vec![String::from("AI"), String::from("ai"), String::from("au")]), vec![String::from("AI"), String::from("ai"), String::from("au")]);
    assert_eq!(candidate(vec![String::from("a"), String::from("b"), String::from("b"), String::from("c"), String::from("c"), String::from("a")]), Vec::<String>::new());
    assert_eq!(candidate(vec![String::from("aaaa"), String::from("bbbb"), String::from("dd"), String::from("cc")]), vec![String::from("cc"), String::from("dd"), String::from("aaaa"), String::from("bbbb")]);
}
