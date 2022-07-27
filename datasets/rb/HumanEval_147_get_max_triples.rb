# You are given a positive integer n. You have to create an integer array a of length n.
# For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
# Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
# and a[i] + a[j] + a[k] is a multiple of 3.
# Example :
# Input: n = 5
# Output: 1
# Explanation: 
# a = [1, 3, 7, 13, 21]
# The only valid triple is (1, 7, 13).
def get_max_triples(n)
    # Write your code here
    # To print results to the standard output you can use print
    # Example: print "Hello world!"
    a = []
    for i in 1..n
        a << i * i - i + 1
    end
    count = 0
    for i in 0..n-3
        for j in i+1..n-2
            for k in j+1..n-1
                if (a[i] + a[j] + a[k]) % 3 == 0
                    count += 1
                end
            end
        end
    end
    print count
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_get_max_triples
    candidate = method(:get_max_triples)
    assert_equal(1, candidate.call(5))
    assert_equal(4, candidate.call(6))
    assert_equal(36, candidate.call(10))
    assert_equal(53361, candidate.call(100))
  end
end
