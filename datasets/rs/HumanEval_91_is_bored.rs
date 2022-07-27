/// You'll be given a string of words, and your task is to count the number
/// of boredoms. A boredom is a sentence that starts with the word "I".
/// Sentences are delimited by '.', '?' or '!'.
/// For example:
/// >>> is_bored("Hello world")
/// 0
/// >>> is_bored("The sky is blue. The sun is shining. I love this weather")
/// 1
fn is_bored(S: String) -> isize {
    let mut count = 0;
    let mut is_bored = false;
    for c in S.chars() {
        if c == '.' || c == '?' || c == '!' {
            if is_bored {
                count += 1;
            }
            is_bored = false;
        } else if c == 'I' {
            is_bored = true;
        }
    }
    count

}

fn main() {
    let candidate = is_bored;
    assert_eq!(candidate(String::from("Hello world")), 0);
    assert_eq!(candidate(String::from("Is the sky blue?")), 0);
    assert_eq!(candidate(String::from("I love It !")), 1);
    assert_eq!(candidate(String::from("bIt")), 0);
    assert_eq!(candidate(String::from("I feel good today. I will be productive. will kill It")), 2);
    assert_eq!(candidate(String::from("You and I are going for a walk")), 0);
}
