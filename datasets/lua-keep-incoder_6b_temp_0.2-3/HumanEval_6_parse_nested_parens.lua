-- Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
-- For each of the group, output the deepest level of nesting of parentheses.
-- E.g. (()()) has maximum two levels of nesting while ((())) has three.
-- >>> parse_nested_parens('(()()) ((())) () ((())()())')
-- [2, 3, 1, 3]
local function parse_nested_parens(paren_string)
    local level = 0
    local paren_stack = {}
    local paren_levels = {}
    local paren_groups = {}
    local paren_group_index = 1
    local paren_group_count = 1
    local paren_group_level = 1
    local paren_group_start = 1
    local paren_group_end = 1
    local paren_group_stack = {}
    local paren_group_levels = {}
    local paren_group_starts = {}
    local paren_group_ends = {}
    local paren_group_stacks = {}
    local paren_group_levels_stack = {}
    local paren_group_starts_stack = {}
    local paren_group_ends_stack = {}
    local paren_group_stacks_stack = {}
    local paren_group_levels_stacks = {}
    local paren_group_starts_stacks = {}
    local paren_group_ends_stacks = {}
    local paren_group_stacks_stacks = {}
    local paren_group_levels_stacks = {}
    local paren_group_starts_stacks = {}
    local paren_group_ends_stacks = {}
    local paren_group_stacks_stacks = {}
    local paren_group_levels_stacks = {}
    local paren_group_starts_stacks = {}
    local paren_group_ends_stacks = {}
    local paren_group_stacks_stacks = {}
    local paren_group_levels_stacks = {}
    local paren_group_starts_stacks = {}
    local paren_group_ends_stacks = {}
    local paren_group_stacks_stacks = {}
    local paren_group_levels_stacks = {}
    local paren_group_starts_stacks = {}
    local paren_group_ends_stacks = {}
    local paren_group_stacks_stacks = {}
    local paren_group_levels_stacks = {}
    local paren_group_starts_stacks = {}
    local paren_group_ends_stacks = {}
    local paren_group_stacks_stacks = {}
    local paren_group_levels_stacks = {}
    local paren_group_starts_stacks = {}
    local paren_group_ends_stacks = {}
    local paren_group_stacks_stacks = {}
    local paren_group_levels_stacks = {}
    local paren_group_starts_stacks = {}
    local paren_group_ends_stacks = {}
    local paren_group_stacks_stacks = {}
    local paren_group_levels_stacks = {}
    local paren_group_starts_stacks = {}
    local paren_group_ends_stacks = {}
    local paren_group_stacks_stacks = {}
    local paren_group_level

lu = require('luaunit')

function test_humaneval()
local candidate = parse_nested_parens
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {2, 3, 1, 3})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {1, 2, 3, 4})
    lu.assertEquals(candidate('(()(())((())))'), {4})
end

os.exit(lu.LuaUnit.run())