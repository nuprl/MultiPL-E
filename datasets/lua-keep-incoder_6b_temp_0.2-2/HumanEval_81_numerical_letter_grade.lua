-- It is the last week of the semester and the teacher has to give the grades
-- to students. The teacher has been making her own algorithm for grading.
-- The only problem is, she has lost the code she used for grading.
-- She has given you a list of GPAs for some students and you have to write 
-- a function that can output a list of letter grades using the following table:
-- GPA       |    Letter grade
-- 4.0                A+
-- > 3.7                A 
-- > 3.3                A- 
-- > 3.0                B+
-- > 2.7                B 
-- > 2.3                B-
-- > 2.0                C+
-- > 1.7                C
-- > 1.3                C-
-- > 1.0                D+ 
-- > 0.7                D 
-- > 0.0                D-
-- 0.0                E
-- Example:
-- grade_equation([4.0, 3, 1.7, 2, 3.5]) ==> ['A+', 'B', 'C-', 'C', 'A-']
local function numerical_letter_grade(grades)
    local grades_sum = 0
    local grades_count = 0
    for _, grade in ipairs(grades) do
        grades_sum = grades_sum + grade
        grades_count = grades_count + 1
    end
    local grades_average = grades_sum / grades_count
    local grades_letter = ''
    if grades_average >= 4.0 then
        grades_letter = 'A+'
    elseif grades_average >= 3.7 then
        grades_letter = 'A'
    elseif grades_average >= 3.3 then
        grades_letter = 'A-'
    elseif grades_average >= 3.0 then
        grades_letter = 'B+'
    elseif grades_average >= 2.7 then
        grades_letter = 'B'
    elseif grades_average >= 2.3 then
        grades_letter = 'B-'
    elseif grades_average >= 2.0 then
        grades_letter = 'C+'
    elseif grades_average >= 1.7 then
        grades_letter = 'C'
    elseif grades_average >= 1.3 then
        grades_letter = 'C-'
    elseif grades_average >= 1.0 then
        grades_letter = 'D+'
    elseif grades_average >= 0.7 then
        grades_letter = 'D'
    elseif grades_average >= 0.0 then
        grades_letter = 'D-'
    else
        grades_letter = 'E'
    end
    return grades_letter
end


lu = require('luaunit')

function test_humaneval()
local candidate = numerical_letter_grade
    lu.assertEquals(candidate({4.0, 3, 1.7, 2, 3.5}), {'A+', 'B', 'C-', 'C', 'A-'})
    lu.assertEquals(candidate({1.2}), {'D+'})
    lu.assertEquals(candidate({0.5}), {'D-'})
    lu.assertEquals(candidate({0.0}), {'E'})
    lu.assertEquals(candidate({1.0, 0.3, 1.5, 2.8, 3.3}), {'D', 'D-', 'C-', 'B', 'B+'})
    lu.assertEquals(candidate({0.0, 0.7}), {'E', 'D-'})
end

os.exit(lu.LuaUnit.run())