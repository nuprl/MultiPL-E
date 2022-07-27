/// Find how many times a given substring can be found in the original string. Count overlaping cases.
/// >>> how_many_times('', 'a')
/// 0
/// >>> how_many_times('aaa', 'a')
/// 3
/// >>> how_many_times('aaaa', 'aa')
/// 3
fn how_many_times(string: String, substring: String) -> isize {
    let mut count = 0;
    let mut index = 0;
    while index < string.len() {
        let sub_index = string.find(&substring, index);
        if sub_index.is_some() {
            count += 1;
            index = sub_index.unwrap() + 1;
        } else {
            break;
        }
    }
    count

}

fn main() {
    let candidate = how_many_times;
    assert_eq!(candidate(String::from(""), String::from("x")), 0);
    assert_eq!(candidate(String::from("xyxyxyx"), String::from("x")), 4);
    assert_eq!(candidate(String::from("cacacacac"), String::from("cac")), 4);
    assert_eq!(candidate(String::from("john doe"), String::from("john")), 1);
}
