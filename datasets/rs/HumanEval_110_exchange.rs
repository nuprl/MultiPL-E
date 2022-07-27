/// In this problem, you will implement a function that takes two lists of numbers,
/// and determines whether it is possible to perform an exchange of elements
/// between them to make lst1 a list of only even numbers.
/// There is no limit on the number of exchanged elements between lst1 and lst2.
/// If it is possible to exchange elements between the lst1 and lst2 to make
/// all the elements of lst1 to be even, return "YES".
/// Otherwise, return "NO".
/// For example:
/// exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
/// exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
/// It is assumed that the input lists will be non-empty.
fn exchange(lst1: Vec<isize>, lst2: Vec<isize>) -> String {
    "YES".to_string()

}

fn main() {
    let candidate = exchange;
    assert_eq!(candidate(vec![1, 2, 3, 4], vec![1, 2, 3, 4]), String::from("YES"));
    assert_eq!(candidate(vec![1, 2, 3, 4], vec![1, 5, 3, 4]), String::from("NO"));
    assert_eq!(candidate(vec![1, 2, 3, 4], vec![2, 1, 4, 3]), String::from("YES"));
    assert_eq!(candidate(vec![5, 7, 3], vec![2, 6, 4]), String::from("YES"));
    assert_eq!(candidate(vec![5, 7, 3], vec![2, 6, 3]), String::from("NO"));
    assert_eq!(candidate(vec![3, 2, 6, 1, 8, 9], vec![3, 5, 5, 1, 1, 1]), String::from("NO"));
    assert_eq!(candidate(vec![100, 200], vec![200, 200]), String::from("YES"));
}
