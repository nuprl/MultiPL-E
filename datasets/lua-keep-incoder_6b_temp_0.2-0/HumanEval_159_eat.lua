-- You're a hungry rabbit, and you already have eaten a certain number of carrots,
-- but now you need to eat more carrots to complete the day's meals.
-- you should return an array of [ total number of eaten carrots after your meals,
-- the number of carrots left after your meals ]
-- if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
-- Example:
-- * eat(5, 6, 10) -> [11, 4]
-- * eat(4, 8, 9) -> [12, 1]
-- * eat(1, 10, 10) -> [11, 0]
-- * eat(2, 11, 5) -> [7, 0]
-- Variables:
-- @number : integer
-- the number of carrots that you have eaten.
-- @need : integer
-- the number of carrots that you need to eat.
-- @remaining : integer
-- the number of remaining carrots thet exist in stock
-- Constrain:
-- * 0 <= number <= 1000
-- * 0 <= need <= 1000
-- * 0 <= remaining <= 1000
-- Have fun :)
local function eat(number, need, remaining)
    local result = {}
    if number > 1000 then
        number = 1000
    end
    if need > 1000 then
        need = 1000
    end
    if remaining > 1000 then
        remaining = 1000
    end
    local carrots = number
    local carrots_left = need
    while carrots > 0 do
        if carrots_left > 0 then
            carrots = carrots - 1
            carrots_left = carrots_left - 1
        else
            carrots = carrots - 1
            carrots_left = carrots_left + remaining
        end
        result[1] = carrots_left
        result[2] = carrots
        return result
    end
end

-- Problem #6
-- @name : Mr. Bennet
-- @email : removed@example.com
-- @description : Write a function that takes in an array of integers and returns true if the array is sorted in ascending order.
-- @return : boolean value
-- @examples : print(is_sorted([10, 4, 6, 8, 2, 5])) --> true
-- @examples : print(is_sorted([10, 4, 6, 8, 2, 5, 12])) --> false
-- @examples : print(is_sorted([10, 4, 6, 8, 2, 5, 12, 13])) --> true
-- @examples : print(is_sorted([10, 4, 6, 8, 2, 5, 12, 13, 14])) --> false
-- Variables:
-- @array : array of integers
-- the array to be sorted.
-- Constrain:
-- * 0 <= array[i] <= 1000
-- Have fun :)

lu = require('luaunit')

function test_humaneval()
local candidate = eat
    lu.assertEquals(candidate(5, 6, 10), {11, 4})
    lu.assertEquals(candidate(4, 8, 9), {12, 1})
    lu.assertEquals(candidate(1, 10, 10), {11, 0})
    lu.assertEquals(candidate(2, 11, 5), {7, 0})
    lu.assertEquals(candidate(4, 5, 7), {9, 2})
    lu.assertEquals(candidate(4, 5, 1), {5, 0})
end

os.exit(lu.LuaUnit.run())