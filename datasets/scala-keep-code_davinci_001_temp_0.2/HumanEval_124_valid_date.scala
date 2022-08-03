import scala.math._
import scala.collection.mutable._
object Problem {
    // You have to write a function which validates a given date string and
    // returns True if the date is valid otherwise False.
    // The date is valid if all of the following rules are satisfied:
    // 1. The date string is not empty.
    // 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
    // 3. The months should not be less than 1 or higher than 12.
    // 4. The date should be in the format: mm-dd-yyyy
    // for example: 
    // valid_date('03-11-2000') => True
    // valid_date('15-01-2012') => False
    // valid_date('04-0-2040') => False
    // valid_date('06-04-2020') => True
    // valid_date('06/04/2020') => False
    def validDate(date : String) : Boolean = {
        // Write your code here
        val date_split = date.split("-")
        if (date_split.length != 3) {
            return false
        }
        val month = date_split(0).toInt
        val day = date_split(1).toInt
        val year = date_split(2).toInt
        if (month < 1 || month > 12) {
            return false
        }
        if (day < 1 || day > 31) {
            return false
        }
        if (month == 2) {
            if (day > 29) {
                return false
            }
        } else if (month == 4 || month == 6 || month == 9 || month == 11) {
            if (day > 30) {
                return false
            }
        }
        return true

    }
    def main(args: Array[String]) = {
    assert(validDate(("03-11-2000")) == (true));
    assert(validDate(("15-01-2012")) == (false));
    assert(validDate(("04-0-2040")) == (false));
    assert(validDate(("06-04-2020")) == (true));
    assert(validDate(("01-01-2007")) == (true));
    assert(validDate(("03-32-2011")) == (false));
    assert(validDate(("")) == (false));
    assert(validDate(("04-31-3000")) == (false));
    assert(validDate(("06-06-2005")) == (true));
    assert(validDate(("21-31-2000")) == (false));
    assert(validDate(("04-12-2003")) == (true));
    assert(validDate(("04122003")) == (false));
    assert(validDate(("20030412")) == (false));
    assert(validDate(("2003-04")) == (false));
    assert(validDate(("2003-04-12")) == (false));
    assert(validDate(("04-2003")) == (false));
    }

}
