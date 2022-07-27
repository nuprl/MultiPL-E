/// Given a list of strings, where each string consists of only digits, return a list.
/// Each element i of the output should be "the number of odd elements in the
/// string i of the input." where all the i's should be replaced by the number
/// of odd digits in the i'th string of the input.
/// >>> odd_count(['1234567'])
/// ["the number of odd elements 4n the str4ng 4 of the 4nput."]
/// >>> odd_count(['3',"11111111"])
/// ["the number of odd elements 1n the str1ng 1 of the 1nput.",
/// "the number of odd elements 8n the str8ng 8 of the 8nput."]
fn odd_count(lst: Vec<String>) -> Vec<String> {
    lst.iter().map(|s| {
        format!("the number of odd elements {}n the str{}ng {} of the {}nput.",
                s.chars().filter(|&c| c.is_ascii_digit()).filter(|&c| c.to_digit(10).unwrap() % 2 == 1).count(),
                s.chars().filter(|&c| c.is_ascii_digit()).filter(|&c| c.to_digit(10).unwrap() % 2 == 1).count(),
                s.chars().filter(|&c| c.is_ascii_digit()).filter(|&c| c.to_digit(10).unwrap() % 2 == 1).count(),
                s.chars().filter(|&c| c.is_ascii_digit()).filter(|&c| c.to_digit(10).unwrap() % 2 == 1).count())
    }).collect()

}

fn main() {
    let candidate = odd_count;
    assert_eq!(candidate(vec![String::from("1234567")]), vec![String::from("the number of odd elements 4n the str4ng 4 of the 4nput.")]);
    assert_eq!(candidate(vec![String::from("3"), String::from("11111111")]), vec![String::from("the number of odd elements 1n the str1ng 1 of the 1nput."), String::from("the number of odd elements 8n the str8ng 8 of the 8nput.")]);
    assert_eq!(candidate(vec![String::from("271"), String::from("137"), String::from("314")]), vec![String::from("the number of odd elements 2n the str2ng 2 of the 2nput."), String::from("the number of odd elements 3n the str3ng 3 of the 3nput."), String::from("the number of odd elements 2n the str2ng 2 of the 2nput.")]);
}
