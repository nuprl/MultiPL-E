
// Filter given list of any python values only for integers
// >>> filter_integers(['a', 3.14, 5])
// [5]
// >>> filter_integers([1, 2, 3, 'abc', {}, []])
// [1, 2, 3]
func filter_integers(values: [AnyHashable]) -> [Int] {
    return values.filter { $0 is Int }.map { $0 as! Int }

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
            
assert(filter_integers(values: [] as [AnyHashable]) == [] as [Int])
assert(filter_integers(values: [4, [:] as [AnyHashable : AnyHashable], [] as [AnyHashable], 23.2, 9, "adasd"]) == [4, 9])
assert(filter_integers(values: [3, "c", 3, 3, "a", "b"]) == [3, 3, 3])