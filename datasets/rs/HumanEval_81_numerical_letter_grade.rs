/// It is the last week of the semester and the teacher has to give the grades
/// to students. The teacher has been making her own algorithm for grading.
/// The only problem is, she has lost the code she used for grading.
/// She has given you a list of GPAs for some students and you have to write 
/// a function that can output a list of letter grades using the following table:
/// GPA       |    Letter grade
/// 4.0                A+
/// > 3.7                A 
/// > 3.3                A- 
/// > 3.0                B+
/// > 2.7                B 
/// > 2.3                B-
/// > 2.0                C+
/// > 1.7                C
/// > 1.3                C-
/// > 1.0                D+ 
/// > 0.7                D 
/// > 0.0                D-
/// 0.0                E
/// Example:
/// grade_equation([4.0, 3, 1.7, 2, 3.5]) ==> ['A+', 'B', 'C-', 'C', 'A-']
fn numerical_letter_grade(grades: Vec<f64>) -> Vec<String> {
    let mut result: Vec<String> = Vec::new();
    for grade in grades {
        match grade {
            4.0 => result.push("A+".to_string()),
            3.7..=4.0 => result.push("A".to_string()),
            3.3..=3.7 => result.push("A-".to_string()),
            3.0..=3.3 => result.push("B+".to_string()),
            2.7..=3.0 => result.push("B".to_string()),
            2.3..=2.7 => result.push("B-".to_string()),
            2.0..=2.3 => result.push("C+".to_string()),
            1.7..=2.0 => result.push("C".to_string()),
            1.3..=1.7 => result.push("C-".to_string()),
            1.0..=1.3 => result.push("D+".to_string()),
            0.7..=1.0 => result.push("D".to_string()),
            0.0..=0.7 => result.push("D-".to_string()),
            _ => result.push("E".to_string()),
        }
    }
    result

}

fn main() {
    let candidate = numerical_letter_grade;
    assert_eq!(candidate(vec![4.0, 3.0, 1.7, 2.0, 3.5]), vec![String::from("A+"), String::from("B"), String::from("C-"), String::from("C"), String::from("A-")]);
    assert_eq!(candidate(vec![1.2]), vec![String::from("D+")]);
    assert_eq!(candidate(vec![0.5]), vec![String::from("D-")]);
    assert_eq!(candidate(vec![0.0]), vec![String::from("E")]);
    assert_eq!(candidate(vec![1.0, 0.3, 1.5, 2.8, 3.3]), vec![String::from("D"), String::from("D-"), String::from("C-"), String::from("B"), String::from("B+")]);
    assert_eq!(candidate(vec![0.0, 0.7]), vec![String::from("E"), String::from("D-")]);
}
