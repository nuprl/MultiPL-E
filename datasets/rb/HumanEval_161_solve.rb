# You are given a string s.
# if s[i] is a letter, reverse its case from lower to upper or vise versa, 
# otherwise keep it as it is.
# If the string contains no letters, reverse the string.
# The function should return the resulted string.
# Examples
# solve("1234") = "4321"
# solve("ab") = "AB"
# solve("#a@C") = "#A@c"
def solve(s)
  s.gsub(/[a-z]/i, &:swapcase)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_solve
    candidate = method(:solve)
    assert_equal('aSdF', candidate.call('AsDf'))
    assert_equal('4321', candidate.call('1234'))
    assert_equal('AB', candidate.call('ab'))
    assert_equal('#A@c', candidate.call('#a@C'))
    assert_equal('#aSDFw^45', candidate.call('#AsdfW^45'))
    assert_equal('2@6#', candidate.call('#6@2'))
    assert_equal('#$A^d', candidate.call('#$a^D'))
    assert_equal('#CCC', candidate.call('#ccc'))
  end
end
