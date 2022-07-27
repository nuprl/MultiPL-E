/// You're a hungry rabbit, and you already have eaten a certain number of carrots,
/// but now you need to eat more carrots to complete the day's meals.
/// you should return an array of [ total number of eaten carrots after your meals,
/// the number of carrots left after your meals ]
/// if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
/// Example:
/// * eat(5, 6, 10) -> [11, 4]
/// * eat(4, 8, 9) -> [12, 1]
/// * eat(1, 10, 10) -> [11, 0]
/// * eat(2, 11, 5) -> [7, 0]
/// Variables:
/// @number : integer
/// the number of carrots that you have eaten.
/// @need : integer
/// the number of carrots that you need to eat.
/// @remaining : integer
/// the number of remaining carrots thet exist in stock
/// Constrain:
/// * 0 <= number <= 1000
/// * 0 <= need <= 1000
/// * 0 <= remaining <= 1000
/// Have fun :)
fn eat(number: isize, need: isize, remaining: isize) -> Vec<isize> {
    let mut eaten = number;
    let mut remaining = remaining;
    while eaten < need {
        eaten += remaining;
        remaining = 0;
    }
    if eaten > need {
        eaten -= remaining;
        remaining = eaten - need;
    }
    vec![eaten, remaining]

}

fn main() {
    let candidate = eat;
    assert_eq!(candidate(5, 6, 10), vec![11, 4]);
    assert_eq!(candidate(4, 8, 9), vec![12, 1]);
    assert_eq!(candidate(1, 10, 10), vec![11, 0]);
    assert_eq!(candidate(2, 11, 5), vec![7, 0]);
    assert_eq!(candidate(4, 5, 7), vec![9, 2]);
    assert_eq!(candidate(4, 5, 1), vec![5, 0]);
}
