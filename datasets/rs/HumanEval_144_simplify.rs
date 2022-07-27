/// Your task is to implement a function that will simplify the expression
/// x * n. The function returns True if x * n evaluates to a whole number and False
/// otherwise. Both x and n, are string representation of a fraction, and have the following format,
/// <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
/// You can assume that x, and n are valid fractions, and do not have zero as denominator.
/// simplify("1/5", "5/1") = True
/// simplify("1/6", "2/1") = False
/// simplify("7/10", "10/2") = False
fn simplify(x: String, n: String) -> bool {
    let x: Vec<&str> = x.split('/').collect();
    let n: Vec<&str> = n.split('/').collect();
    let x_num: i32 = x[0].parse().unwrap();
    let x_den: i32 = x[1].parse().unwrap();
    let n_num: i32 = n[0].parse().unwrap();
    let n_den: i32 = n[1].parse().unwrap();
    let mut x_num_simplified: i32 = x_num * n_den;
    let mut x_den_simplified: i32 = x_den * n_num;
    if x_num_simplified % x_den_simplified == 0 {
        return true;
    }
    x_num_simplified = x_num * n_num;
    x_den_simplified = x_den * n_den;
    if x_num_simplified % x_den_simplified == 0 {
        return true;
    }
    false

}

fn main() {
    let candidate = simplify;
    assert_eq!(candidate(String::from("1/5"), String::from("5/1")), true);
    assert_eq!(candidate(String::from("1/6"), String::from("2/1")), false);
    assert_eq!(candidate(String::from("5/1"), String::from("3/1")), true);
    assert_eq!(candidate(String::from("7/10"), String::from("10/2")), false);
    assert_eq!(candidate(String::from("2/10"), String::from("50/10")), true);
    assert_eq!(candidate(String::from("7/2"), String::from("4/2")), true);
    assert_eq!(candidate(String::from("11/6"), String::from("6/1")), true);
    assert_eq!(candidate(String::from("2/3"), String::from("5/2")), false);
    assert_eq!(candidate(String::from("5/2"), String::from("3/5")), false);
    assert_eq!(candidate(String::from("2/4"), String::from("8/4")), true);
    assert_eq!(candidate(String::from("2/4"), String::from("4/2")), true);
    assert_eq!(candidate(String::from("1/5"), String::from("5/1")), true);
    assert_eq!(candidate(String::from("1/5"), String::from("1/5")), false);
}
