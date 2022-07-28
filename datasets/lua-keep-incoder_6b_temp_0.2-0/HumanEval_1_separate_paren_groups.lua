-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the list of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- ['()', '(())', '(()())']
local function separate_paren_groups(paren_string)
    local open_brace_count = 0
    local close_brace_count = 0
    local paren_string = paren_string:gsub('(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%b)(%

lu = require('luaunit')

function test_humaneval()
local candidate = separate_paren_groups
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {'(()())', '((()))', '()', '((())()())'})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {'()', '(())', '((()))', '(((())))'})
    lu.assertEquals(candidate('(()(())((())))'), {'(()(())((())))'})
    lu.assertEquals(candidate('( ) (( )) (( )( ))'), {'()', '(())', '(()())'})
end

os.exit(lu.LuaUnit.run())