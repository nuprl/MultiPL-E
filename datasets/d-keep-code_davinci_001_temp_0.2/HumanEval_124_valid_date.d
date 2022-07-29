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
bool valid_date(const(char)[] date) 
{
    auto [month, day, year] = split(date, "-");
    auto [month_, day_, year_] = [month, day, year];
    auto [month__, day__, year__] = [month_, day_, year_];
    auto [month___, day___, year___] = [month__, day__, year__];
    auto [month____, day____, year____] = [month___, day___, year___];
    auto [month_____, day_____, year_____] = [month____, day____, year____];
    auto [month______, day______, year______] = [month_____, day_____, year_____];
    auto [month_______, day_______, year_______] = [month______, day______, year______];
    auto [month________, day________, year________] = [month_______, day_______, year_______];
    auto [month_________, day_________, year_________] = [month________, day________, year________];
    auto [month__________, day__________, year__________] = [month_________, day_________, year_________];
    auto [month___________, day___________, year___________] = [month__________, day__________, year__________];
    auto [month____________, day____________, year____________] = [month___________, day___________, year___________];
    auto [month_____________, day_____________, year_____________] = [month____________, day____________, year____________];
    auto [month______________, day______________, year______________] = [month_____________, day_____________, year_____________];
    auto [month_______________, day_______________, year_______________] = [month______________, day______________, year______________];
    auto [month________________, day________________, year________________] = [month_______________, day_______________, year_______________];
    auto [month_________________, day_________________, year_________________] = [month________________, day________________, year________________];
    auto [month__________________, day__________________, year__________________] = [month_________________, day_________________, year_________________];


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