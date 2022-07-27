# I think we all remember that feeling when the result of some long-awaited
# event is finally known. The feelings and thoughts you have at that moment are
# definitely worth noting down and comparing.
# Your task is to determine if a person correctly guessed the results of a number of matches.
# You are given two arrays of scores and guesses of equal length, where each index shows a match. 
# Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
# the value is 0, and if not, the value is the absolute difference between the guess and the score.
# example:
# compare([1,2,3,4,5,1],[1,2,3,4,2,-2]) -> [0,0,0,0,3,3]
# compare([0,5,0,0,0,4],[4,1,1,0,0,-2]) -> [4,4,1,0,0,6]
def compare(game, guess)
  game.zip(guess).map { |x, y| (x - y).abs }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_compare
    candidate = method(:compare)
    assert_equal([0, 0, 0, 0, 3, 3], candidate.call([1, 2, 3, 4, 5, 1], [1, 2, 3, 4, 2, -2]))
    assert_equal([0, 0, 0, 0, 0, 0], candidate.call([0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]))
    assert_equal([2, 4, 6], candidate.call([1, 2, 3], [-1, -2, -3]))
    assert_equal([2, 0, 0, 1], candidate.call([1, 2, 3, 5], [-1, 2, 3, 4]))
  end
end
