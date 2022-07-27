/// Write a function that accepts two lists of strings and returns the list that has 
/// total number of chars in the all strings of the list less than the other list.
/// if the two lists have the same number of chars, return the first list.
/// Examples
/// total_match([], []) ➞ []
/// total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
/// total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
/// total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
/// total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
fn total_match(lst1: Vec<String>, lst2: Vec<String>) -> Vec<String> {
    let mut lst1_len = 0;
    let mut lst2_len = 0;
    for s in lst1.iter() {
        lst1_len += s.len();
    }
    for s in lst2.iter() {
        lst2_len += s.len();
    }
    if lst1_len < lst2_len {
        lst1
    } else if lst1_len > lst2_len {
        lst2
    } else {
        lst1
    }

}

fn main() {
    let candidate = total_match;
    assert_eq!(candidate(Vec::<String>::new(), Vec::<String>::new()), Vec::<String>::new());
    assert_eq!(candidate(vec![String::from("hi"), String::from("admin")], vec![String::from("hi"), String::from("hi")]), vec![String::from("hi"), String::from("hi")]);
    assert_eq!(candidate(vec![String::from("hi"), String::from("admin")], vec![String::from("hi"), String::from("hi"), String::from("admin"), String::from("project")]), vec![String::from("hi"), String::from("admin")]);
    assert_eq!(candidate(vec![String::from("4")], vec![String::from("1"), String::from("2"), String::from("3"), String::from("4"), String::from("5")]), vec![String::from("4")]);
    assert_eq!(candidate(vec![String::from("hi"), String::from("admin")], vec![String::from("hI"), String::from("Hi")]), vec![String::from("hI"), String::from("Hi")]);
    assert_eq!(candidate(vec![String::from("hi"), String::from("admin")], vec![String::from("hI"), String::from("hi"), String::from("hi")]), vec![String::from("hI"), String::from("hi"), String::from("hi")]);
    assert_eq!(candidate(vec![String::from("hi"), String::from("admin")], vec![String::from("hI"), String::from("hi"), String::from("hii")]), vec![String::from("hi"), String::from("admin")]);
    assert_eq!(candidate(Vec::<String>::new(), vec![String::from("this")]), Vec::<String>::new());
    assert_eq!(candidate(vec![String::from("this")], Vec::<String>::new()), Vec::<String>::new());
}
