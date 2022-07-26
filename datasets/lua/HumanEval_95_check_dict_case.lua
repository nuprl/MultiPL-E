-- Given a dictionary, return True if all keys are strings in lower 
-- case or all keys are strings in upper case, else return False.
-- The function should return False is the given dictionary is empty.
-- Examples:
-- check_dict_case({"a":"apple", "b":"banana"}) should return True.
-- check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
-- check_dict_case({"a":"apple", 8:"banana", "a":"apple"}) should return False.
-- check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
-- check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
local function check_dict_case(dict)
  -- YOUR CODE HERE
  local lower_case = true
  local upper_case = true
  for k,v in pairs(dict) do
    if type(k) ~= "string" then
      return false
    end
    if string.lower(k) ~= k then
      lower_case = false
    end
    if string.upper(k) ~= k then
      upper_case = false
    end
  end
  return lower_case or upper_case
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = check_dict_case
    lu.assertEquals(candidate({['<ast.Constant object at 0x7f078fc91f30>'] = 'pineapple', ['<ast.Constant object at 0x7f078fc93940>'] = 'banana'}), true)
    lu.assertEquals(candidate({['<ast.Constant object at 0x7f078fc90580>'] = 'pineapple', ['<ast.Constant object at 0x7f078fc922f0>'] = 'banana', ['<ast.Constant object at 0x7f078fc92620>'] = 'banana'}), false)
    lu.assertEquals(candidate({['<ast.Constant object at 0x7f078fc93cd0>'] = 'pineapple', ['<ast.Constant object at 0x7f078fc90a00>'] = 'banana', ['<ast.Constant object at 0x7f078fc93760>'] = 'apple'}), false)
    lu.assertEquals(candidate({['<ast.Constant object at 0x7f078fc91090>'] = 'John', ['<ast.Constant object at 0x7f078fc92b90>'] = '36', ['<ast.Constant object at 0x7f078fc91870>'] = 'Houston'}), false)
    lu.assertEquals(candidate({['<ast.Constant object at 0x7f078fc93d60>'] = 'NC', ['<ast.Constant object at 0x7f078fc937c0>'] = '12345'}), true)
    lu.assertEquals(candidate({['<ast.Constant object at 0x7f078fc910c0>'] = 'Orange', ['<ast.Constant object at 0x7f078fc93880>'] = 'Sweet'}), true)
    lu.assertEquals(candidate({}), false)
end

os.exit(lu.LuaUnit.run())