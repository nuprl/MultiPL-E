/// From a list of integers, remove all elements that occur more than once.
/// Keep order of elements left the same as in the input.
/// >>> remove_duplicates([1, 2, 3, 2, 4])
/// [1, 3, 4]
fn remove_duplicates(numbers: Vec<isize>) -> Vec<isize> {
    let mut result: Vec<isize> = Vec::new();
    let mut seen: HashSet<isize> = HashSet::new();
    for number in numbers {
        if !seen.contains(&number) {
            result.push(number);
            seen.insert(number);
        }
    }
    result

}

fn main() {
    let candidate = remove_duplicates;
    assert_eq!(candidate(Vec::<isize>::new()), Vec::<isize>::new());
    assert_eq!(candidate(vec![1, 2, 3, 4]), vec![1, 2, 3, 4]);
    assert_eq!(candidate(vec![1, 2, 3, 2, 4, 3, 5]), vec![1, 4, 5]);
}
