
/// In this Kata, you have to sort an array of non-negative integers according to
/// number of ones in their binary representation in ascending order.
/// For similar number of ones, sort based on decimal value.
/// It must be implemented like this:
/// >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
/// >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
/// >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
func sort_array(arr: [Int]) -> [Int] {
    var result = [Int]()
    var ones = [Int]()
    var zeros = [Int]()
    var twos = [Int]()
    var threes = [Int]()
    var fours = [Int]()
    var fives = [Int]()
    var sixes = [Int]()
    var sevens = [Int]()
    var eights = [Int]()
    var nines = [Int]()
    var tens = [Int]()
    var elevens = [Int]()
    var twelves = [Int]()
    var thirteens = [Int]()
    var fourteens = [Int]()
    var fifteens = [Int]()
    var sixteens = [Int]()
    var seventeens = [Int]()
    var eighteens = [Int]()
    var ninteens = [Int]()
    var twenties = [Int]()
    var twentyOnes = [Int]()
    var twentyTwos = [Int]()
    var twentyThrees = [Int]()
    var twentyFours = [Int]()
    var twentyFives = [Int]()
    var twentySixes = [Int]()
    var twentySevens = [Int]()
    var twentyEights = [Int]()
    var twentyNines = [Int]()
    var thirtys = [Int]()
    var thirtyOnes = [Int]()
    var thirtyTwos = [Int]()
    var thirtyThrees = [Int]()
    var thirtyFours = [Int]()
    var thirtyFives = [Int]()
    var thirtySixes = [Int]()
    var thirtySevens = [Int]()
    var thirtyEights = [Int]()
    var thirtyNines = [Int]()
    var fourtys = [Int]()
    var fourtyOnes = [Int]()
    var fourtyTwos = [Int]()
    var fourtyThrees = [Int]()
    var fourtyFours = [Int]()
    var fourtyFives

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
            
assert(sort_array(arr: [1, 5, 2, 3, 4]) == [1, 2, 4, 3, 5])
assert(sort_array(arr: [-2, -3, -4, -5, -6]) == [-4, -2, -6, -5, -3])
assert(sort_array(arr: [1, 0, 2, 3, 4]) == [0, 1, 2, 4, 3])
assert(sort_array(arr: [] as [Int]) == [] as [Int])
assert(sort_array(arr: [2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4]) == [2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77])
assert(sort_array(arr: [3, 6, 44, 12, 32, 5]) == [32, 3, 5, 6, 12, 44])
assert(sort_array(arr: [2, 4, 8, 16, 32]) == [2, 4, 8, 16, 32])
assert(sort_array(arr: [2, 4, 8, 16, 32]) == [2, 4, 8, 16, 32])