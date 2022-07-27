/// Given an array of integers, sort the integers that are between 1 and 9 inclusive,
/// reverse the resulting array, and then replace each digit by its corresponding name from
/// "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
/// For example:
/// arr = [2, 1, 1, 4, 5, 8, 2, 3]   
/// -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
/// -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
/// return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
/// If the array is empty, return an empty array:
/// arr = []
/// return []
/// If the array has any strange number ignore it:
/// arr = [1, -1 , 55] 
/// -> sort arr -> [-1, 1, 55]
/// -> reverse arr -> [55, 1, -1]
/// return = ['One']
fn by_length(arr: Vec<isize>) -> Vec<String> {
    let mut arr = arr;
    arr.sort();
    arr.reverse();
    let mut result = Vec::new();
    for i in arr {
        if i > 0 && i < 10 {
            result.push(i.to_string());
        }
    }
    result

}

fn main() {
    let candidate = by_length;
    assert_eq!(candidate(vec![2, 1, 1, 4, 5, 8, 2, 3]), vec![String::from("Eight"), String::from("Five"), String::from("Four"), String::from("Three"), String::from("Two"), String::from("Two"), String::from("One"), String::from("One")]);
    assert_eq!(candidate(Vec::<isize>::new()), Vec::<String>::new());
    assert_eq!(candidate(vec![1, -1, 55]), vec![String::from("One")]);
    assert_eq!(candidate(vec![1, -1, 3, 2]), vec![String::from("Three"), String::from("Two"), String::from("One")]);
    assert_eq!(candidate(vec![9, 4, 8]), vec![String::from("Nine"), String::from("Eight"), String::from("Four")]);
}
