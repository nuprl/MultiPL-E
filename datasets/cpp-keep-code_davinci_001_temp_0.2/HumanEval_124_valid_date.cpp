#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
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
bool valid_date(std::string date) {
    std::vector<std::string> date_split = split(date, '-');
    if (date_split.size() != 3) {
        return false;
    }
    std::string month = date_split[0];
    std::string day = date_split[1];
    std::string year = date_split[2];
    if (month.size() != 2 || day.size() != 2 || year.size() != 4) {
        return false;
    }
    int month_num = std::stoi(month);
    int day_num = std::stoi(day);
    int year_num = std::stoi(year);
    if (month_num < 1 || month_num > 12) {
        return false;
    }
    if (day_num < 1 || day_num > 31) {
        return false;
    }
    if (month_num == 2) {
        if (day_num > 29) {
            return false;
        }
    } else if (month_num == 4 || month_num == 6 || month_num == 9 || month_num == 11) {
        if (day_num > 30) {
            return false;
        }
    }
    return true;
}


int main() {
    auto candidate = valid_date;
    assert(candidate(("03-11-2000")) == (true));
    assert(candidate(("15-01-2012")) == (false));
    assert(candidate(("04-0-2040")) == (false));
    assert(candidate(("06-04-2020")) == (true));
    assert(candidate(("01-01-2007")) == (true));
    assert(candidate(("03-32-2011")) == (false));
    assert(candidate(("")) == (false));
    assert(candidate(("04-31-3000")) == (false));
    assert(candidate(("06-06-2005")) == (true));
    assert(candidate(("21-31-2000")) == (false));
    assert(candidate(("04-12-2003")) == (true));
    assert(candidate(("04122003")) == (false));
    assert(candidate(("20030412")) == (false));
    assert(candidate(("2003-04")) == (false));
    assert(candidate(("2003-04-12")) == (false));
    assert(candidate(("04-2003")) == (false));
}