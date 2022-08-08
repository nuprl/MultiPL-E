# You have to write a function which validates a given date string and
# returns True if the date is valid otherwise False.
# The date is valid if all of the following rules are satisfied:
# 1. The date string is not empty.
# 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
# 3. The months should not be less than 1 or higher than 12.
# 4. The date should be in the format: mm-dd-yyyy
# for example: 
# valid_date('03-11-2000') => True
# valid_date('15-01-2012') => False
# valid_date('04-0-2040') => False
# valid_date('06-04-2020') => True
# valid_date('06/04/2020') => False
valid_date <- function(date) {
    # your code here
    # check if the date is empty
    if(length(date) == 0) {
        return(FALSE)
    }
    # check if the date is in the format mm-dd-yyyy
    if(nchar(date) != 10) {
        return(FALSE)
    }
    # check if the month is valid
    if(substr(date, 1, 2) < 01 | substr(date, 1, 2) > 12) {
        return(FALSE)
    }
    # check if the day is valid
    if(substr(date, 4, 5) < 01 | substr(date, 4, 5) > 31) {
        return(FALSE)
    }
    # check if the day is valid for the month
    if(substr(date, 1, 2) == "01" | substr(date, 1, 2) == "03" | substr(date, 1, 2) == "05" | substr(date, 1, 2) == "07" | substr(date, 1, 2) == "08" | substr(date, 1, 2) == "10" | substr(date, 1, 2) == "12") {
        if(substr(date, 4, 5) > 31) {
            return(FALSE)
        }
    }
    if(substr(date, 1, 2) == "04" | substr(date, 1, 2) == "06" | substr(date, 1, 2) == "09" | substr(date, 1, 2) == "11") {
        if(substr(date, 4, 5) > 30) {
            return(FALSE)
        }
    }
    if(substr(date, 1, 2) == "02") {
        if(substr(date, 4, 5) > 29) {
            return(FALSE)
        }
    }
    return(TRUE)
}

valid_date('03-11-2000')
valid_date('15-01-2012')
valid_date('04-0-2040')
valid_date('06-04-2020')

test_humaneval <- function() {
candidate <- valid_date
    if(!identical(candidate('03-11-2000'), TRUE)){quit('no', 1)}
    if(!identical(candidate('15-01-2012'), FALSE)){quit('no', 1)}
    if(!identical(candidate('04-0-2040'), FALSE)){quit('no', 1)}
    if(!identical(candidate('06-04-2020'), TRUE)){quit('no', 1)}
    if(!identical(candidate('01-01-2007'), TRUE)){quit('no', 1)}
    if(!identical(candidate('03-32-2011'), FALSE)){quit('no', 1)}
    if(!identical(candidate(''), FALSE)){quit('no', 1)}
    if(!identical(candidate('04-31-3000'), FALSE)){quit('no', 1)}
    if(!identical(candidate('06-06-2005'), TRUE)){quit('no', 1)}
    if(!identical(candidate('21-31-2000'), FALSE)){quit('no', 1)}
    if(!identical(candidate('04-12-2003'), TRUE)){quit('no', 1)}
    if(!identical(candidate('04122003'), FALSE)){quit('no', 1)}
    if(!identical(candidate('20030412'), FALSE)){quit('no', 1)}
    if(!identical(candidate('2003-04'), FALSE)){quit('no', 1)}
    if(!identical(candidate('2003-04-12'), FALSE)){quit('no', 1)}
    if(!identical(candidate('04-2003'), FALSE)){quit('no', 1)}
}
test_humaneval()