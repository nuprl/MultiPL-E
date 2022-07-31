
/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in a list, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var stones = [Int]()
    var i = n
    while i > 0 {
        stones.append(i)
        i = i + (i % 2 == 0 ? 1 : -1)
    }
    return stones

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])