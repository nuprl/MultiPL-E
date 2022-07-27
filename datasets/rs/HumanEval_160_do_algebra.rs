/// Given two lists operator, and operand. The first list has basic algebra operations, and 
/// the second list is a list of integers. Use the two given lists to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator list is equal to the length of operand list minus one.
/// Operand is a list of of non-negative integers.
/// Operator list has at least one operator, and operand list has at least two operands.
fn do_algebra(operator: Vec<String>, operand: Vec<isize>) -> isize {
    let mut result = operand[0];
    for i in 1..operand.len() {
        let op = &operator[i - 1];
        let operand = operand[i];
        match op.as_str() {
            "+" => result += operand,
            "-" => result -= operand,
            "*" => result *= operand,
            "/" => result /= operand,
            "**" => result = result.pow(operand as u32),
            _ => panic!("Invalid operator"),
        }
    }
    result

}

fn main() {
    let candidate = do_algebra;
    assert_eq!(candidate(vec![String::from("**"), String::from("*"), String::from("+")], vec![2, 3, 4, 5]), 37);
    assert_eq!(candidate(vec![String::from("+"), String::from("*"), String::from("-")], vec![2, 3, 4, 5]), 9);
    assert_eq!(candidate(vec![String::from("//"), String::from("*")], vec![7, 3, 4]), 8);
}
