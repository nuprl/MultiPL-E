# Given a string text, replace all spaces in it with underscores, 
# and if a string has more than 2 consecutive spaces, 
# then replace all consecutive spaces with - 
# fix_spaces("Example") == "Example"
# fix_spaces("Example 1") == "Example_1"
# fix_spaces(" Example 2") == "_Example_2"
# fix_spaces(" Example   3") == "_Example-3"
def fix_spaces(text)
  text.gsub(/\s+/, '_')
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_fix_spaces
    candidate = method(:fix_spaces)
    assert_equal("Example", candidate.call("Example"))
    assert_equal("Mudasir_Hanif_", candidate.call("Mudasir Hanif "))
    assert_equal("Yellow_Yellow__Dirty__Fellow", candidate.call("Yellow Yellow  Dirty  Fellow"))
    assert_equal("Exa-mple", candidate.call("Exa   mple"))
    assert_equal("-Exa_1_2_2_mple", candidate.call("   Exa 1 2 2 mple"))
  end
end
