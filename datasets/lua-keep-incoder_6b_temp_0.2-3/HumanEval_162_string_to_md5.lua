-- Given a string 'text', return its md5 hash equivalent string.
-- If 'text' is an empty string, return None.
-- >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
local function string_to_md5(text)
  local function hash_byte(byte)
    return string.char(tonumber(byte, 16))
  end
  local function hash_word(word)
    return hash_byte(word:sub(1, 2):byte()) .. hash_byte(word:sub(3)):byte()
  end
  local function hash_line(line)
    return hash_word(line:sub(1, 1):byte()) .. hash_word(line:sub(3)):byte()
  end
  local function hash_text(text)
    return hash_line(text:sub(1, 1):byte()) .. hash_line(text:sub(3)):byte()
  end
  local function hash_none(text)
    return nil
  end
  if text == nil then
    return nil
  end
  if text:len() == 0 then
    return hash_none(text)
  end
  local hash = hash_text(text)
  if hash == hash_none(text) then
    return nil
  end
  return hash
end

-- Given a binary 'data' string, return its md5 hash equivalent string.
-- If 'data' is an empty string, return None.
-- >>> binary_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'

lu = require('luaunit')

function test_humaneval()
local candidate = string_to_md5
    lu.assertEquals(candidate('Hello world'), '3e25960a79dbc69b674cd4ec67a72c62')
    lu.assertEquals(candidate(''), None)
    lu.assertEquals(candidate('A B C'), '0ef78513b0cb8cef12743f5aeb35f888')
    lu.assertEquals(candidate('password'), '5f4dcc3b5aa765d61d8327deb882cf99')
end

os.exit(lu.LuaUnit.run())