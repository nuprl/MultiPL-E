/// You have to write a function which validates a given date string and
/// returns True if the date is valid otherwise False.
/// The date is valid if all of the following rules are satisfied:
/// 1. The date string is not empty.
/// 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
/// 3. The months should not be less than 1 or higher than 12.
/// 4. The date should be in the format: mm-dd-yyyy
/// for example: 
/// valid_date('03-11-2000') => True
/// valid_date('15-01-2012') => False
/// valid_date('04-0-2040') => False
/// valid_date('06-04-2020') => True
/// valid_date('06/04/2020') => False
fn valid_date(date: String) -> bool {
    let mut date_vec: Vec<&str> = date.split("-").collect();
    if date_vec.len() != 3 {
        return false;
    }
    let month: i32 = date_vec[0].parse().unwrap();
    let day: i32 = date_vec[1].parse().unwrap();
    let year: i32 = date_vec[2].parse().unwrap();
    if month < 1 || month > 12 {
        return false;
    }
    if day < 1 || day > 31 {
        return false;
    }
    if month == 2 {
        if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
            if day > 29 {
                return false;
            }
        } else {
            if day > 28 {
                return false;
            }
        }
    } else if month == 4 || month == 6 || month == 9 || month == 11 {
        if day > 30 {
            return false;
        }
    }
    true

}

fn main() {
    let candidate = valid_date;
    assert_eq!(candidate(String::from("03-11-2000")), true);
    assert_eq!(candidate(String::from("15-01-2012")), false);
    assert_eq!(candidate(String::from("04-0-2040")), false);
    assert_eq!(candidate(String::from("06-04-2020")), true);
    assert_eq!(candidate(String::from("01-01-2007")), true);
    assert_eq!(candidate(String::from("03-32-2011")), false);
    assert_eq!(candidate(String::from("")), false);
    assert_eq!(candidate(String::from("04-31-3000")), false);
    assert_eq!(candidate(String::from("06-06-2005")), true);
    assert_eq!(candidate(String::from("21-31-2000")), false);
    assert_eq!(candidate(String::from("04-12-2003")), true);
    assert_eq!(candidate(String::from("04122003")), false);
    assert_eq!(candidate(String::from("20030412")), false);
    assert_eq!(candidate(String::from("2003-04")), false);
    assert_eq!(candidate(String::from("2003-04-12")), false);
    assert_eq!(candidate(String::from("04-2003")), false);
}
