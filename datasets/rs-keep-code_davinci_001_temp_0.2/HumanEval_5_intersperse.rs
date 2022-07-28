/// Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
/// >>> intersperse([], 4)
/// []
/// >>> intersperse([1, 2, 3], 4)
/// [1, 4, 2, 4, 3]
fn intersperse(numbers: Vec<isize>, delimeter: isize) -> Vec<isize> {
    let mut result = Vec::new();
    for (i, number) in numbers.iter().enumerate() {
        if i != 0 {
            result.push(delimeter);
        }
        result.push(*number);
    }
    result

}

fn main() {
    let candidate = intersperse;
    assert_eq!(candidate(Vec::<isize>::new(), 7), Vec::<isize>::new());
    assert_eq!(candidate(vec![5, 6, 3, 2], 8), vec![5, 8, 6, 8, 3, 8, 2]);
    assert_eq!(candidate(vec![2, 2, 2], 2), vec![2, 2, 2, 2, 2]);
}
