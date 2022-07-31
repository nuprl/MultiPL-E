
/// This function takes a list l and returns a list l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even([1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even([5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var even = [Int]()
    var odd = [Int]()
    for i in l {
        if i % 2 == 0 {
            even.append(i)
        } else {
            odd.append(i)
        }
    }
    even.sort()
    return even + odd

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
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])