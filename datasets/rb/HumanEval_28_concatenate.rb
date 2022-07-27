# Concatenate list of strings into a single string
# >>> concatenate([])
# ''
# >>> concatenate(['a', 'b', 'c'])
# 'abc'
def concatenate(strings)
  strings.join
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_concatenate
    candidate = method(:concatenate)
    assert_equal('', candidate.call([]))
    assert_equal('xyz', candidate.call(['x', 'y', 'z']))
    assert_equal('xyzwk', candidate.call(['x', 'y', 'z', 'w', 'k']))
  end
end
