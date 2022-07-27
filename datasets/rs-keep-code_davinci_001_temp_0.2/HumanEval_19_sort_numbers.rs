/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers('three one five')
/// 'one three five'
fn sort_numbers(numbers: String) -> String {
    let mut nums: Vec<u32> = numbers
        .split_whitespace()
        .map(|s| s.parse::<u32>().unwrap())
        .collect();
    nums.sort();
    nums.iter().map(|n| n.to_string()).collect::<Vec<String>>().join(" ")

}

fn main() {
    let candidate = sort_numbers;
    assert_eq!(candidate(String::from("")), String::from(""));
    assert_eq!(candidate(String::from("three")), String::from("three"));
    assert_eq!(candidate(String::from("three five nine")), String::from("three five nine"));
    assert_eq!(candidate(String::from("five zero four seven nine eight")), String::from("zero four five seven eight nine"));
    assert_eq!(candidate(String::from("six five four three two one zero")), String::from("zero one two three four five six"));
}
