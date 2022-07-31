
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
func valid_date(date: String) -> Bool {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM-dd-yyyy"
    let date = dateFormatter.date(from: date)
    if date == nil {
        return false
    }
    let calendar = Calendar.current
    let components = calendar.dateComponents([.day, .month, .year], from: date!)
    if components.day! < 1 || components.day! > 31 {
        return false
    }
    if components.month! < 1 || components.month! > 12 {
        return false
    }
    if components.month! == 1 || components.month! == 3 || components.month! == 5 || components.month! == 7 || components.month! == 8 || components.month! == 10 || components.month! == 12 {
        if components.day! > 31 {
            return false
        }
    }
    if components.month! == 4 || components.month! == 6 || components.month! == 9 || components.month! == 11 {
        if components.day! > 30 {
            return false
        }
    }
    if components.month! == 2 {
        if components.day! > 29 {
            return false
        }
    }
    return true

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(valid_date(date: "03-11-2000") == true)
assert(valid_date(date: "15-01-2012") == false)
assert(valid_date(date: "04-0-2040") == false)
assert(valid_date(date: "06-04-2020") == true)
assert(valid_date(date: "01-01-2007") == true)
assert(valid_date(date: "03-32-2011") == false)
assert(valid_date(date: "") == false)
assert(valid_date(date: "04-31-3000") == false)
assert(valid_date(date: "06-06-2005") == true)
assert(valid_date(date: "21-31-2000") == false)
assert(valid_date(date: "04-12-2003") == true)
assert(valid_date(date: "04122003") == false)
assert(valid_date(date: "20030412") == false)
assert(valid_date(date: "2003-04") == false)
assert(valid_date(date: "2003-04-12") == false)
assert(valid_date(date: "04-2003") == false)