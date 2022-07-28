-- You have to write a function which validates a given date string and
-- returns True if the date is valid otherwise False.
-- The date is valid if all of the following rules are satisfied:
-- 1. The date string is not empty.
-- 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
-- 3. The months should not be less than 1 or higher than 12.
-- 4. The date should be in the format: mm-dd-yyyy
-- for example: 
-- valid_date('03-11-2000') => True
-- valid_date('15-01-2012') => False
-- valid_date('04-0-2040') => False
-- valid_date('06-04-2020') => True
-- valid_date('06/04/2020') => False
local function valid_date(date)
    local date_split = string.split(date, "-")
    local date_year = tonumber(date_split[2])
    local date_month = tonumber(date_split[1])
    local date_day = tonumber(date_split[3])
    
    if date_year == nil or date_month == nil or date_day == nil then
        return false
    end
    
    if date_year < 1 or date_year > 9999 then
        return false
    end
    
    if date_month < 1 or date_month > 12 then
        return false
    end
    
    if date_day < 1 or date_day > 31 then
        return false
    end
    
    if date_month == 1 or date_month == 3 or date_month == 5 or date_month == 7 or date_month == 8 or date_month == 10 or date_month == 12 or date_month == 4 then
        if date_day < 1 or date_day > 29 then
            return false
        end
    elseif date_month == 2 or date_month == 4 or date_month == 6 or date_month == 9 or date_month == 11 or date_month == 0 then
        if date_day < 1 or date_day > 30 then
            return false
        end
    end
    
    return true
end

-- This function checks if a date is valid and returns the date in the format: mm-dd-yyyy
-- If the date is not valid then it returns nil.
-- The date is valid if all of the following rules are satisfied:
-- 1. The date string is not empty.
-- 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
-- 3. The months should not be less than 1 or higher than 12.
-- 4. The date should be in the format: mm-dd-yyyy
-- for example: 
-- valid_date('03-11-2000') => 03-11-2000
-- valid_date('15-01-2012') => 15-01-2012
-- valid_date('04-0-2040') => 04-0-2040
-- valid_date('06-04-2020') => 06-04-2020
-- valid_date('06/04/2020') => 06/04/2020

lu = require('luaunit')

function test_humaneval()
local candidate = valid_date
    lu.assertEquals(candidate('03-11-2000'), true)
    lu.assertEquals(candidate('15-01-2012'), false)
    lu.assertEquals(candidate('04-0-2040'), false)
    lu.assertEquals(candidate('06-04-2020'), true)
    lu.assertEquals(candidate('01-01-2007'), true)
    lu.assertEquals(candidate('03-32-2011'), false)
    lu.assertEquals(candidate(''), false)
    lu.assertEquals(candidate('04-31-3000'), false)
    lu.assertEquals(candidate('06-06-2005'), true)
    lu.assertEquals(candidate('21-31-2000'), false)
    lu.assertEquals(candidate('04-12-2003'), true)
    lu.assertEquals(candidate('04122003'), false)
    lu.assertEquals(candidate('20030412'), false)
    lu.assertEquals(candidate('2003-04'), false)
    lu.assertEquals(candidate('2003-04-12'), false)
    lu.assertEquals(candidate('04-2003'), false)
end

os.exit(lu.LuaUnit.run())