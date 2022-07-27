# Write a function that takes an integer a and returns True 
# if this ingeger is a cube of some integer number.
# Note: you may assume the input is always valid.
# Examples:
# iscube(1) ==> True
# iscube(2) ==> False
# iscube(-1) ==> True
# iscube(64) ==> True
# iscube(0) ==> True
# iscube(180) ==> False
def iscube(a)
    if a == 0
        return true
    end
    if a < 0
        a = -a
    end
    x = Math.cbrt(a)
    if x == x.to_i
        return true
    else
        return false
    end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_iscube
    candidate = method(:iscube)
    assert_equal(true, candidate.call(1))
    assert_equal(false, candidate.call(2))
    assert_equal(true, candidate.call(-1))
    assert_equal(true, candidate.call(64))
    assert_equal(false, candidate.call(180))
    assert_equal(true, candidate.call(1000))
    assert_equal(true, candidate.call(0))
    assert_equal(false, candidate.call(1729))
  end
end
