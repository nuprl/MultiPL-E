-- Given a string 'text', return its md5 hash equivalent string.
-- If 'text' is an empty string, return None.
-- >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
local function string_to_md5(text)
    if text == '' then
        return nil
    end
    local md5 = ngx.md5(text)
    return md5
end

lu = require('luaunit')

function test_humaneval()
local candidate = string_to_md5
    lu.assertEquals(candidate('Hello world'), '3e25960a79dbc69b674cd4ec67a72c62')
    lu.assertEquals(candidate(''), None)
    lu.assertEquals(candidate('A B C'), '0ef78513b0cb8cef12743f5aeb35f888')
    lu.assertEquals(candidate('password'), '5f4dcc3b5aa765d61d8327deb882cf99')
end

os.exit(lu.LuaUnit.run())