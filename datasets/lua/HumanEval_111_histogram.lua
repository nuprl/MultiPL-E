-- Given a string representing a space separated lowercase letters, return a dictionary
-- of the letter with the most repetition and containing the corresponding count.
-- If several letters have the same occurrence, return all of them.
-- Example:
-- histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
-- histogram('a b b a') == {'a': 2, 'b': 2}
-- histogram('a b c a b') == {'a': 2, 'b': 2}
-- histogram('b b b b a') == {'b': 4}
-- histogram('') == {}
local function histogram(test)
    local hist = {}
    for i in string.gmatch(test, "%S+") do
        if hist[i] then
            hist[i] = hist[i] + 1
        else
            hist[i] = 1
        end
    end
    return hist
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = histogram
    lu.assertEquals(candidate('a b b a'), {['<ast.Constant object at 0x7f078fc0b5b0>'] = 2, ['<ast.Constant object at 0x7f078fc0a530>'] = 2})
    lu.assertEquals(candidate('a b c a b'), {['<ast.Constant object at 0x7f078fc09240>'] = 2, ['<ast.Constant object at 0x7f078fc0b0d0>'] = 2})
    lu.assertEquals(candidate('a b c d g'), {['<ast.Constant object at 0x7f078fc0aa10>'] = 1, ['<ast.Constant object at 0x7f078fc096c0>'] = 1, ['<ast.Constant object at 0x7f078fc0b190>'] = 1, ['<ast.Constant object at 0x7f078fc085e0>'] = 1, ['<ast.Constant object at 0x7f078fc0b220>'] = 1})
    lu.assertEquals(candidate('r t g'), {['<ast.Constant object at 0x7f078fc09f30>'] = 1, ['<ast.Constant object at 0x7f078fc08c70>'] = 1, ['<ast.Constant object at 0x7f078fc08ee0>'] = 1})
    lu.assertEquals(candidate('b b b b a'), {['<ast.Constant object at 0x7f078fc0ac80>'] = 4})
    lu.assertEquals(candidate('r t g'), {['<ast.Constant object at 0x7f078fc09750>'] = 1, ['<ast.Constant object at 0x7f078fc09600>'] = 1, ['<ast.Constant object at 0x7f078fc0a8f0>'] = 1})
    lu.assertEquals(candidate(''), {})
    lu.assertEquals(candidate('a'), {['<ast.Constant object at 0x7f078fc09b40>'] = 1})
end

os.exit(lu.LuaUnit.run())