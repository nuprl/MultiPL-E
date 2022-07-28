"""You have to write a function which validates a given date string and
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
    """
function valid_date(date::String)::Bool 
    date_split = split(date, "-")
    if length(date_split) != 3
        return false
    end
    month = parse(Int, date_split[1])
    day = parse(Int, date_split[2])
    year = parse(Int, date_split[3])
    if month < 1 || month > 12
        return false
    end
    if day < 1 || day > 31
        return false
    end
    if month == 2
        if day > 29
            return false
        end
    elseif month == 4 || month == 6 || month == 9 || month == 11
        if day > 30
            return false
        end
    end
    return true
end

using Test

@testset begin

candidate = valid_date;
	@test(candidate("03-11-2000") == true)
	@test(candidate("15-01-2012") == false)
	@test(candidate("04-0-2040") == false)
	@test(candidate("06-04-2020") == true)
	@test(candidate("01-01-2007") == true)
	@test(candidate("03-32-2011") == false)
	@test(candidate("") == false)
	@test(candidate("04-31-3000") == false)
	@test(candidate("06-06-2005") == true)
	@test(candidate("21-31-2000") == false)
	@test(candidate("04-12-2003") == true)
	@test(candidate("04122003") == false)
	@test(candidate("20030412") == false)
	@test(candidate("2003-04") == false)
	@test(candidate("2003-04-12") == false)
	@test(candidate("04-2003") == false)
end
