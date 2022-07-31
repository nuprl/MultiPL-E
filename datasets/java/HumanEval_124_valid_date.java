import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You have to write a function which validates a given date string and
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
    public static boolean valid_date(String date) {
        int[] days = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        String[] months = {"01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"};
        String[] date_split = date.split("-");
        if (date_split.length != 3) {
            return false;
        }
        if (date_split[0].length() != 2 || date_split[1].length() != 2 || date_split[2].length() != 4) {
            return false;
        }
        if (Integer.parseInt(date_split[0]) < 1 || Integer.parseInt(date_split[0]) > 12) {
            return false;
        }
        if (Integer.parseInt(date_split[1]) < 1 || Integer.parseInt(date_split[1]) > days[Integer.parseInt(date_split[0]) - 1]) {
            return false;
        }
        if (Integer.parseInt(date_split[2]) < 1900 || Integer.parseInt(date_split[2]) > 2020) {
            return false;
        }
        return true;
    }
    // You have to write a function which validates a given time string and
    // returns True if the time is valid otherwise False.
    // The time is valid if all of the following rules are satisfied:
    // 1. The time string is not empty.
    // 2. The time string should be in the format: hh:mm:ss
    // for example: 
    // valid_time('00:00:00') => True
    // valid_time('00:00:60') => False
    // valid_time('00:60:00') => False
    // valid_time('24:00:00') => False
    // valid_time('00:00:00:00') => False
    public static boolean valid_time(String time) {
        String[] time_split = time.split(":");
        if (time_split.length != 3

    }
    public static void main(String[] args) {
    assert(valid_date(("03-11-2000")) == (true));
    assert(valid_date(("15-01-2012")) == (false));
    assert(valid_date(("04-0-2040")) == (false));
    assert(valid_date(("06-04-2020")) == (true));
    assert(valid_date(("01-01-2007")) == (true));
    assert(valid_date(("03-32-2011")) == (false));
    assert(valid_date(("")) == (false));
    assert(valid_date(("04-31-3000")) == (false));
    assert(valid_date(("06-06-2005")) == (true));
    assert(valid_date(("21-31-2000")) == (false));
    assert(valid_date(("04-12-2003")) == (true));
    assert(valid_date(("04122003")) == (false));
    assert(valid_date(("20030412")) == (false));
    assert(valid_date(("2003-04")) == (false));
    assert(valid_date(("2003-04-12")) == (false));
    assert(valid_date(("04-2003")) == (false));
    }

}
