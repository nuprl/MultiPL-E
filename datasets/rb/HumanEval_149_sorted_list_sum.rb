# Write a function that accepts a list of strings as a parameter,
# deletes the strings that have odd lengths from it,
# and returns the resulted list with a sorted order,
# The list is always a list of strings and never an array of numbers,
# and it may contain duplicates.
# The order of the list should be ascending by length of each word, and you
# should return the list sorted by that rule.
# If two words have the same length, sort the list alphabetically.
# The function should return a list of strings in sorted order.
# You may assume that all words will have the same length.
# For example:
# assert list_sort(["aa", "a", "aaa"]) => ["aa"]
# assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
def sorted_list_sum(lst)
  lst.sort_by { |word| [word.length, word] }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_sorted_list_sum
    candidate = method(:sorted_list_sum)
    assert_equal(["aa"], candidate.call(["aa", "a", "aaa"]))
    assert_equal(["AI", "asdf", "school"], candidate.call(["school", "AI", "asdf", "b"]))
    assert_equal([], candidate.call(["d", "b", "c", "a"]))
    assert_equal(["abcd", "dcba"], candidate.call(["d", "dcba", "abcd", "a"]))
    assert_equal(["AI", "ai", "au"], candidate.call(["AI", "ai", "au"]))
    assert_equal([], candidate.call(["a", "b", "b", "c", "c", "a"]))
    assert_equal(["cc", "dd", "aaaa", "bbbb"], candidate.call(["aaaa", "bbbb", "dd", "cc"]))
  end
end
