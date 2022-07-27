-- Given a positive integer n, return the count of the numbers of n-digit
-- positive integers that start or end with 1.
local function starts_one_ends(n)
  local count = 0
  for i = 1, n do
    if i ~= 1 and i ~= n then
      if i ~= n - 1 then
        if i ~= n - 2 then
          if i ~= n - 3 then
            if i ~= n - 4 then
              if i ~= n - 5 then
                if i ~= n - 6 then
                  if i ~= n - 7 then
                    if i ~= n - 8 then
                      if i ~= n - 9 then
                        if i ~= n - 10 then
                          if i ~= n - 11 then
                            if i ~= n - 12 then
                              if i ~= n - 13 then
                                if i ~= n - 14 then
                                  if i ~= n - 15 then
                                    if i ~= n - 16 then
                                      if i ~= n - 17 then
                                        if i ~= n - 18 then
                                          if i ~= n - 19 then
                                            if i ~= n - 20 then
                                              if i ~= n - 21 then
                                                if i ~= n - 22 then
                                                  if i ~= n - 23 then
                                                    if i ~= n - 24 then
                                                      if i ~= n - 25 then
                                                        count = count + 1
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  return count
end

-- Given a positive integer n, return the count of the numbers of n-digit
-- positive integers that start or end with 0.

lu = require('luaunit')

function test_humaneval()
local candidate = starts_one_ends
    lu.assertEquals(candidate(1), 1)
    lu.assertEquals(candidate(2), 18)
    lu.assertEquals(candidate(3), 180)
    lu.assertEquals(candidate(4), 1800)
    lu.assertEquals(candidate(5), 18000)
end

os.exit(lu.LuaUnit.run())