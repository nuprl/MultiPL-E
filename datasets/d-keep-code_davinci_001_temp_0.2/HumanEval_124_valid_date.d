import std.math;
import std.typecons;
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
bool valid_date(const(char)[] date) 
{
    // your code here
    auto [month, day, year] = split(date, "-");
    auto [month_int, day_int, year_int] = [to!int(month), to!int(day), to!int(year)];
    if (month_int < 1 || month_int > 12)
        return false;
    if (day_int < 1 || day_int > 31)
        return false;
    if (month_int == 2)
    {
        if (day_int > 29)
            return false;
    }
    else if (month_int == 4 || month_int == 6 || month_int == 9 || month_int == 11)
    {
        if (day_int > 30)
            return false;
    }
    else
    {
        if (day_int > 31)
            return false;
    }
    return true;
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