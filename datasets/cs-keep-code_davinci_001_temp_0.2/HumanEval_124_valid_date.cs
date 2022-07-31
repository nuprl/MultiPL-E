using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
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
    public static bool ValidDate(string date) {
        // Write your code here
        if (date.Length == 0) {
            return false;
        }
        string[] dateArray = date.Split('-');
        if (dateArray.Length != 3) {
            return false;
        }
        if (int.Parse(dateArray[0]) < 1 || int.Parse(dateArray[0]) > 12) {
            return false;
        }
        if (int.Parse(dateArray[1]) < 1 || int.Parse(dateArray[1]) > 31) {
            return false;
        }
        if (int.Parse(dateArray[2]) < 1 || int.Parse(dateArray[2]) > 9999) {
            return false;
        }
        if (int.Parse(dateArray[0]) == 2) {
            if (int.Parse(dateArray[1]) > 29) {
                return false;
            }
        }
        else if (int.Parse(dateArray[0]) == 4 || int.Parse(dateArray[0]) == 6 || int.Parse(dateArray[0]) == 9 || int.Parse(dateArray[0]) == 11) {
            if (int.Parse(dateArray[1]) > 30) {
                return false;
            }
        }
        else {
            if (int.Parse(dateArray[1]) > 31) {
                return false;
            }
        }
        return true;

    }
    public static void Main(string[] args) {
    Debug.Assert(ValidDate(("03-11-2000")) == (true));
    Debug.Assert(ValidDate(("15-01-2012")) == (false));
    Debug.Assert(ValidDate(("04-0-2040")) == (false));
    Debug.Assert(ValidDate(("06-04-2020")) == (true));
    Debug.Assert(ValidDate(("01-01-2007")) == (true));
    Debug.Assert(ValidDate(("03-32-2011")) == (false));
    Debug.Assert(ValidDate(("")) == (false));
    Debug.Assert(ValidDate(("04-31-3000")) == (false));
    Debug.Assert(ValidDate(("06-06-2005")) == (true));
    Debug.Assert(ValidDate(("21-31-2000")) == (false));
    Debug.Assert(ValidDate(("04-12-2003")) == (true));
    Debug.Assert(ValidDate(("04122003")) == (false));
    Debug.Assert(ValidDate(("20030412")) == (false));
    Debug.Assert(ValidDate(("2003-04")) == (false));
    Debug.Assert(ValidDate(("2003-04-12")) == (false));
    Debug.Assert(ValidDate(("04-2003")) == (false));
    }

}
