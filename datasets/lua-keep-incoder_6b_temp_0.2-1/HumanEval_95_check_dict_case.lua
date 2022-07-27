-- Given a dictionary, return True if all keys are strings in lower 
-- case or all keys are strings in upper case, else return False.
-- The function should return False is the given dictionary is empty.
-- Examples:
-- check_dict_case({"a":"apple", "b":"banana"}) should return True.
-- check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
-- check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
-- check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
-- check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
local function check_dict_case(dict)
    local result = true
    for k,v in pairs(dict) do
        if type(k) ~= "string" then
            result = false
            break
        end
        if type(k) ~= "string" then
            result = false
            break
        end
        if string.lower(k) ~= k then
            result = false
            break
        end
        if string.upper(k) ~= k then
            result = false
            break
        end
    end
    return result
end

-- Given a dictionary, return True if all values are numbers, else return False.
-- The function should return False is the given dictionary is empty.
-- Examples:
-- check_dict_number({"a":"apple", "b":"banana"}) should return True.
-- check_dict_number({"a":"apple", "A":"banana", "B":"banana"}) should return False.
-- check_dict_number({"a":"apple", "8":"banana", "a":"apple"}) should return False.
-- check_dict_number({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
-- check_dict_number({"STATE":"NC", "ZIP":"12345" }) should return True.

lu = require('luaunit')

function test_humaneval()
local candidate = check_dict_case
    lu.assertEquals(candidate({['p'] = 'pineapple', ['b'] = 'banana'}), true)
    lu.assertEquals(candidate({['p'] = 'pineapple', ['A'] = 'banana', ['B'] = 'banana'}), false)
    lu.assertEquals(candidate({['p'] = 'pineapple', ['5'] = 'banana', ['a'] = 'apple'}), false)
    lu.assertEquals(candidate({['Name'] = 'John', ['Age'] = '36', ['City'] = 'Houston'}), false)
    lu.assertEquals(candidate({['STATE'] = 'NC', ['ZIP'] = '12345'}), true)
    lu.assertEquals(candidate({['fruit'] = 'Orange', ['taste'] = 'Sweet'}), true)
    lu.assertEquals(candidate({}), false)
end

os.exit(lu.LuaUnit.run())