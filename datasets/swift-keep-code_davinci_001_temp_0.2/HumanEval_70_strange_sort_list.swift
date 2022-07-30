
// Given list of integers, return list in strange order.
// Strange sorting, is when you start with the minimum value,
// then maximum of the remaining integers, then minimum and so on.
// Examples:
// strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
// strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
// strange_sort_list([]) == []
func strange_sort_list(lst: [Int]) -> [Int] {
    var result = [Int]()
    var min = lst[0]
    var max = lst[0]
    var minIndex = 0
    var maxIndex = 0
    var i = 0
    while i < lst.count {
        if lst[i] < min {
            min = lst[i]
            minIndex = i
        }
        if lst[i] > max {
            max = lst[i]
            maxIndex = i
        }
        i += 1
    }
    result.append(min)
    result.append(max)
    i = 0
    while i < lst.count {
        if i != minIndex && i != maxIndex {
            result.append(lst[i])
        }
        i += 1
    }
    return result

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
            
assert(strange_sort_list(lst: [1, 2, 3, 4]) == [1, 4, 2, 3])
assert(strange_sort_list(lst: [5, 6, 7, 8, 9]) == [5, 9, 6, 8, 7])
assert(strange_sort_list(lst: [1, 2, 3, 4, 5]) == [1, 5, 2, 4, 3])
assert(strange_sort_list(lst: [5, 6, 7, 8, 9, 1]) == [1, 9, 5, 8, 6, 7])
assert(strange_sort_list(lst: [5, 5, 5, 5]) == [5, 5, 5, 5])
assert(strange_sort_list(lst: [] as [Int]) == [] as [Int])
assert(strange_sort_list(lst: [1, 2, 3, 4, 5, 6, 7, 8]) == [1, 8, 2, 7, 3, 6, 4, 5])
assert(strange_sort_list(lst: [0, 2, 2, 2, 5, 5, -5, -5]) == [-5, 5, -5, 5, 0, 2, 2, 2])
assert(strange_sort_list(lst: [111111]) == [111111])