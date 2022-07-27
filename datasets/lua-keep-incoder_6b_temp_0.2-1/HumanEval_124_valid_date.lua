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
    local year = tonumber(date_split[2])
    local month = tonumber(date_split[1])
    local day = tonumber(date_split[3])
    
    if year == nil or month == nil or day == nil then
        return false
    end
    
    if year < 1 or year > 9999 then
        return false
    end
    
    if month < 1 or month > 12 then
        return false
    end
    
    if day < 1 or day > 31 then
        return false
    end
    
    if month == 2 then
        if day > 29 then
            return false
        end
    end
    
    if month == 4 then
        if day > 30 then
            return false
        end
    end
    
    if month == 6 then
        if day > 29 then
            return false
        end
    end
    
    if month == 9 then
        if day > 30 then
            return false
        end
    end
    
    if month == 11 then
        if day > 30 then
            return false
        end
    end
    
    return true
end

-- The function below checks if a date is valid and returns the number of days in that date.
-- The date is valid if all of the following rules are satisfied:
-- 1. The date string is not empty.
-- 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
-- 3. The months should not be less than 1 or higher than 12.
-- 4. The date should be in the format: mm-dd-yyyy
-- for example: 
-- valid_date('03-11-2000') => 31
-- valid_date('15-01-2012') => 31
-- valid_date('04-0-2040') => 29
-- valid_date('06-04-2020') => 31
-- valid_date('06/04/2020') => 29

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