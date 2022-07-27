# Input to this function is a string representing musical notes in a special ASCII format.
# Your task is to parse this string and return list of integers corresponding to how many beats does each
# not last.
# Here is a legend:
# 'o' - whole note, lasts four beats
# 'o|' - half note, lasts two beats
# '.|' - quater note, lasts one beat
# >>> parse_music('o o| .| o| o| .| .| .| .| o o')
# [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
def parse_music(music_string)
    # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_parse_music
    candidate = method(:parse_music)
    assert_equal([], candidate.call(""))
    assert_equal([4, 4, 4, 4], candidate.call("o o o o"))
    assert_equal([1, 1, 1, 1], candidate.call(".| .| .| .|"))
    assert_equal([2, 2, 1, 1, 4, 4, 4, 4], candidate.call("o| o| .| .| o o o o"))
    assert_equal([2, 1, 2, 1, 4, 2, 4, 2], candidate.call("o| .| o| .| o o| o o|"))
  end
end
