-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the list of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- ['()', '(())', '(()())']
local function separate_paren_groups(paren_string)
  local paren_groups = {}
  local open_braces = 0
  local close_braces = 0
  local paren_level = 0
  local paren_group = {}
  local paren_group_stack = {}
  local paren_group_stack_index = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_index = 0
  local paren_group_stack_string_len = 0
  local paren_group_stack_string_len_index = 0
  local paren_group_stack_string_len_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string_len_index = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0
  local paren_group_stack_string = ''
  local paren_group_stack_string_len = 0

lu = require('luaunit')

function test_humaneval()
local candidate = separate_paren_groups
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {'(()())', '((()))', '()', '((())()())'})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {'()', '(())', '((()))', '(((())))'})
    lu.assertEquals(candidate('(()(())((())))'), {'(()(())((())))'})
    lu.assertEquals(candidate('( ) (( )) (( )( ))'), {'()', '(())', '(()())'})
end

os.exit(lu.LuaUnit.run())