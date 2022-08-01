import std.typecons;
import std.math;
/*
You have to write a function which validates a given date string and
    returns True if the date is valid otherwise False.
    The date is valid if all of the following rules are satisfied:
    1. The date string is not empty.
    2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
    3. The months should not be less than 1 or higher than 12.
    4. The date should be in the format: mm-dd-yyyy

    for example: 
    valid_date('03-11-2000') => True

    valid_date('15-01-2012') => False

    valid_date('04-0-2040') => False

    valid_date('06-04-2020') => True

    valid_date('06/04/2020') => False
    
*/
bool valid_date(string date) 
{
    // your code here
    var date_arr = date.split('-');
    var month = int.parse(date_arr[0]);
    var day = int.parse(date_arr[1]);
    var year = int.parse(date_arr[2]);
    if(date.length == 10 && month > 0 && month < 13 && day > 0 && day < 32 && year > 0 && year < 9999)
    {
        if(month == 2)
        {
            if(day > 0 && day < 30)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else if(month == 4 || month == 6 || month == 9 || month == 11)
        {
            if(day > 0 && day < 31)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return true;
        }
    }
    else
    {
        return false;
    }
}

unittest
{
    alias candidate = valid_date;

    assert(candidate("03-11-2000") == true);
    assert(candidate("15-01-2012") == false);
    assert(candidate("04-0-2040") == false);
    assert(candidate("06-04-2020") == true);
    assert(candidate("01-01-2007") == true);
    assert(candidate("03-32-2011") == false);
    assert(candidate("") == false);
    assert(candidate("04-31-3000") == false);
    assert(candidate("06-06-2005") == true);
    assert(candidate("21-31-2000") == false);
    assert(candidate("04-12-2003") == true);
    assert(candidate("04122003") == false);
    assert(candidate("20030412") == false);
    assert(candidate("2003-04") == false);
    assert(candidate("2003-04-12") == false);
    assert(candidate("04-2003") == false);
}
void main(){}