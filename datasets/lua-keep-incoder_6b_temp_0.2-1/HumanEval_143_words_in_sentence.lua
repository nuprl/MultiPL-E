-- You are given a string representing a sentence,
-- the sentence contains some words separated by a space,
-- and you have to return a string that contains the words from the original sentence,
-- whose lengths are prime numbers,
-- the order of the words in the new string should be the same as the original one.
-- Example 1:
-- Input: sentence = "This is a test"
-- Output: "is"
-- Example 2:
-- Input: sentence = "lets go for swimming"
-- Output: "go for"
-- Constraints:
-- * 1 <= len(sentence) <= 100
-- * sentence contains only letters
local function words_in_sentence(sentence)
    local prime_numbers = {}
    local prime_numbers_set = setmetatable({}, {__mode="k"})
    for i = 2, #sentence do
        local prime = true
        for j = 2, #prime_numbers do
            if i % prime_numbers[j] == 0 then
                prime = false
                break
            end
        end
        if prime then
            table.insert(prime_numbers, i)
        end
    end
    local result = ""
    for i = 2, #prime_numbers do
        local word = sentence:sub(1, i)
        local prime_number = prime_numbers[i]
        if prime_numbers_set[prime_number] ~= nil then
            table.insert(result, word)
            prime_numbers_set[prime_number] = nil
        end
    end
    return result
end


lu = require('luaunit')

function test_humaneval()
local candidate = words_in_sentence
    lu.assertEquals(candidate('This is a test'), 'is')
    lu.assertEquals(candidate('lets go for swimming'), 'go for')
    lu.assertEquals(candidate('there is no place available here'), 'there is no place')
    lu.assertEquals(candidate('Hi I am Hussein'), 'Hi am Hussein')
    lu.assertEquals(candidate('go for it'), 'go for it')
    lu.assertEquals(candidate('here'), '')
    lu.assertEquals(candidate('here is'), 'is')
end

os.exit(lu.LuaUnit.run())