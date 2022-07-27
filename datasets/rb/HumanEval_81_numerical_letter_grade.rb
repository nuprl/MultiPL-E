# It is the last week of the semester and the teacher has to give the grades
# to students. The teacher has been making her own algorithm for grading.
# The only problem is, she has lost the code she used for grading.
# She has given you a list of GPAs for some students and you have to write 
# a function that can output a list of letter grades using the following table:
# GPA       |    Letter grade
# 4.0                A+
# > 3.7                A 
# > 3.3                A- 
# > 3.0                B+
# > 2.7                B 
# > 2.3                B-
# > 2.0                C+
# > 1.7                C
# > 1.3                C-
# > 1.0                D+ 
# > 0.7                D 
# > 0.0                D-
# 0.0                E
# Example:
# grade_equation([4.0, 3, 1.7, 2, 3.5]) ==> ['A+', 'B', 'C-', 'C', 'A-']
def numerical_letter_grade(grades)
  grades.map do |grade|
    if grade >= 4.0
      "A+"
    elsif grade >= 3.7
      "A"
    elsif grade >= 3.3
      "A-"
    elsif grade >= 3.0
      "B+"
    elsif grade >= 2.7
      "B"
    elsif grade >= 2.3
      "B-"
    elsif grade >= 2.0
      "C+"
    elsif grade >= 1.7
      "C"
    elsif grade >= 1.3
      "C-"
    elsif grade >= 1.0
      "D+"
    elsif grade >= 0.7
      "D"
    elsif grade >= 0.0
      "D-"
    else
      "E"
    end
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_numerical_letter_grade
    candidate = method(:numerical_letter_grade)
    assert_equal(['A+', 'B', 'C-', 'C', 'A-'], candidate.call([4.0, 3, 1.7, 2, 3.5]))
    assert_equal(['D+'], candidate.call([1.2]))
    assert_equal(['D-'], candidate.call([0.5]))
    assert_equal(['E'], candidate.call([0.0]))
    assert_equal(['D', 'D-', 'C-', 'B', 'B+'], candidate.call([1, 0.3, 1.5, 2.8, 3.3]))
    assert_equal(['E', 'D-'], candidate.call([0, 0.7]))
  end
end
