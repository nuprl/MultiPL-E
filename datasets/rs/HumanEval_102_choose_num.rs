/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// choose_num(12, 15) = 14
/// choose_num(13, 12) = -1
fn choose_num(x: isize, y: isize) -> isize {
    let mut result = -1;
    let mut x = x;
    let mut y = y;
    if x > y {
        let tmp = x;
        x = y;
        y = tmp;
    }
    if x % 2 == 0 {
        result = x;
    }
    while x < y {
        x += 2;
        if x % 2 == 0 {
            result = x;
        }
    }
    result

}

fn main() {
    let candidate = choose_num;
    assert_eq!(candidate(12, 15), 14);
    assert_eq!(candidate(13, 12), -1);
    assert_eq!(candidate(33, 12354), 12354);
    assert_eq!(candidate(5234, 5233), -1);
    assert_eq!(candidate(6, 29), 28);
    assert_eq!(candidate(27, 10), -1);
    assert_eq!(candidate(7, 7), -1);
    assert_eq!(candidate(546, 546), 546);
}
